/**
 *  @dev deaso, yukiexe
 *  @copyright Andoromeda
 */
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <cmath>
#include <algorithm>

#include "config.hpp"
#include "utils.hpp"
#include "kyubey.hpp"
#include "dividend.hpp"

using namespace eosio ;
using namespace kyubeytool ;

CONTRACT cryptojinian : public eosio::contract {
    public:
        cryptojinian( name receiver, name code, datastream<const char*> ds ) :
        contract( receiver, code, ds ),
        _contract_kyubey( receiver, code, ds ),
        _contract_dividend(receiver, code, ds ),
        _global(receiver, receiver.value),
        _coins(receiver, receiver.value),
        _players(receiver, receiver.value),
        _usedcoins(receiver, receiver.value) {}

        TABLE accounts : kyubey::account {};
        TABLE stat : kyubey::currency_stats {};
        struct [[eosio::table("dividend")]] st_dividend : kyubeytool::dividend::st_d_global {};
    
        struct [[eosio::table("global")]] st_global {
            uint64_t id = 0;
            capi_checksum256 hash; // hash of the game seed, 0 when idle.
            // std::map<uint64_t, uint64_t> usedcoins; // 1 uint64_t for 64 coins
            // std::map<uint64_t, uint64_t> usedspilt64; // for faster finding
            // std::map<uint64_t, uint64_t> usedspilt6400; // for faster finding
            //example(for uint8_t):
            //coinnumbers: [8,13,16,29,31,32]
            //usedcoins: [1,9,0,11] ([00000001.00001001,00000000,00001011])
            //remainspilt8: [1,2,0,3]
            //remainspilt16: [3,3]
            // std::map<uint64_t, uint64_t> typecounts;
            uint64_t remainamount; // return remain coin amounts

            const asset miningcost() const { return cost_table( remainamount ); }

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(st_global, (id)(hash)(remainamount)) 
        };

        TABLE player {
            capi_name playername;
            capi_checksum256 seed;
            vector<uint64_t> coins; // coins, for id
            capi_name sponsor = ( DEF_SPONSOR ).value ;
            vector<capi_name> refs ;

            auto primary_key() const { return playername; }
            EOSLIB_SERIALIZE(player, (playername)(seed)(coins)(sponsor)(refs) )
        };

        TABLE coin {
            uint64_t id;
            capi_name owner;
            uint64_t type; //type :xxyy, xx for valuetype, yy for cointype
            //BTC 1 cointype, ETH 2 cointype
            //for example: 2 valuetype BTC: 201
            uint64_t number;

            static uint64_t str_to_coin_type( string &str ) {
                return string_to_int( str ) ;
            }

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(coin, (id)(owner)(type)(number))
        };
        
        TABLE usedcoins {
            // << 16 to fix usedspilt64;
            // << 32 to fix usedspilt6400;
            // << 48 to fix typecounts;
            uint64_t key = 0;
            uint64_t value = 0;

            auto primary_key() const { return key; }
            EOSLIB_SERIALIZE(usedcoins, (key)(value)) 
        };

        TABLE st_miningqueue {
            uint64_t id ;
            capi_name miner ;

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(st_miningqueue, (id)(miner))
        };

        TABLE order {
            uint64_t id;
            capi_name account;
            asset bid;
            vector<uint64_t> the_coins_for_sell ; // coins, for id
            uint64_t timestamp;

            auto primary_key() const { return id; }
            // auto get_unit_price() const { return bid / the_coins_for_sell.number  }
            EOSLIB_SERIALIZE(order, (id)(account)(bid)(the_coins_for_sell)(timestamp))
        };

        struct [[eosio::table("collection")]] st_collection {
            vector<uint64_t> records ;

            // auto primary_key() const { return id; }
            // EOSLIB_SERIALIZE(st_collection, (records))
        };

        typedef singleton<"global"_n, st_global> singleton_global_t;
        typedef eosio::multi_index<"player"_n, player> player_t;
        typedef eosio::multi_index<"coin"_n, coin> coin_t;
        typedef eosio::multi_index<"usedcoins"_n, usedcoins> usedcoins_t;
        typedef eosio::multi_index<"miningqueue"_n, st_miningqueue> miningqueue_t;
        typedef eosio::multi_index<"order"_n, order> order_t;
        typedef singleton<"collection"_n, st_collection> collection_t;

        singleton_global_t _global;
        player_t _players;
        coin_t _coins; 
        usedcoins_t _usedcoins;
        kyubey _contract_kyubey ;
        dividend _contract_dividend;

        struct st_rec_takeOrder {
            order matched_order ;
            name buyer ; 
            string message = "Order matched." ;
        };
        
    private:
        inline vector<uint64_t> merge_seed(const capi_checksum256 &s1);
        void onTransfer(name from, name to, asset quantity, string memo);

        uint64_t addcoincount(const uint64_t type);
        uint64_t findcoinpos(const uint64_t input);
        void newcoinbypos(const name owner, const uint64_t pos);
        void exchange(const std::string inputs);
        void SplitString(const std::string& s, vector<uint64_t>& v, const std::string& c);
        
        auto join_game_processing( const name &account ) {
            auto itr_players = _players.find( account.value ) ;
            if ( itr_players == _players.end() ) { // noob
                itr_players = _players.emplace(get_self(), [&](auto &p) {
                    p.playername = account.value;
                    p.sponsor = DEF_SPONSOR.value;
                });
                // itr_players = _players.find( account.value ) ;
            }
            return itr_players ;
        } // join_game_processing()

        void token_mining( name miner, asset quantity, string memo ) {
            require_auth(get_self());
            // SEND_INLINE_ACTION failed !
            /*
            SEND_INLINE_ACTION( _contract_kyubey, issue, {get_self(),"active"_n},
                                    {itr->miner, asset( string_to_price("1.0000"), CCC_SYMBOL ),
                                     "mining 1 CCC"} );
            */
            _contract_kyubey.issue( miner, quantity, memo);
        }

        inline const asset fee_processing( asset &quantity ) { 
            quantity.set_amount( quantity.amount * TRADE_COEF ) ;
            return quantity;
        }

        auto collection_counter( const name &account ) {
            auto &itr_players = _players.get( account.value, "Player not found." ) ;
            // type :xxyy, xx for valuetype, yy for cointype
            // BTC 1 cointype, ETH 2 cointype
            // for example: 2 valuetype BTC: 201

            vector<vector<uint64_t>> counter( _coinvalues.size() ) ;
            for ( uint8_t i = 0 ; i < counter.size() ; i++  ) {
                counter[i] = vector<uint64_t>( _coinvalues[i].size(), 0 ) ;
            }

            auto citr = _coins.begin() ;
            for ( const auto &cid : itr_players.coins ) {
                citr = _coins.find( cid ) ;
                for ( uint64_t yy = 0 ; yy < counter.size() ; yy++ ) {
                    for ( uint64_t xx = 0 ; xx < counter[yy].size(); xx++ ) {
                        if ( citr->type == ( xx * 100 + ( yy + 1 ) ) )
                            counter[yy][xx]++;
                    }
                }
            }
            
            vector<uint64_t> v_r(22,0) ;
            for ( uint64_t yy = 0 ; yy < counter.size() ; yy++ ) {
                v_r[yy] = counter[yy][0] ;
                for ( uint64_t xx = 0 ; xx < counter[yy].size(); xx++ ) {
                   if ( v_r[yy] > counter[yy][xx] ) v_r[yy] = counter[yy][xx] ;
                }   
            }

            return v_r ;
        }

        // onTransfer() ->
        void join_miningqueue( const name &miner, const asset &totalcost );
        void ref_processing(const name &miner ) {
            ref_processing( miner, DEF_SPONSOR );
        }
        void ref_processing(const name &miner, const name &sponsor );
        /*
        void ibobuy( const name &buyer, asset &in ) {
            require_auth( buyer );
            // _contract_kyubey.buy( buyer, in );
        }
        */

    public:
        ACTION init();
        ACTION transfer(name from, name to, asset quantity, string memo);
        ACTION setcoin(const name &owner, const uint64_t &type, const uint64_t &number);

        ACTION mining( const capi_checksum256 &seed ) {
            require_auth(get_self());
            auto v_seed = merge_seed( seed ) ;
            uint8_t n = 0 ;
            miningqueue_t _miningqueue(get_self(), get_self().value);
            auto itr = _miningqueue.begin();
            name miner ;
            while( itr != _miningqueue.end() && n != v_seed.size() ) {
                miner = name(itr->miner) ;
                newcoinbypos( miner, findcoinpos( v_seed[n] ) ) ;
                token_mining( miner, asset( string_to_price("1.0000"), CCC_SYMBOL ), "Mining 1 CCC" );
                
                SEND_INLINE_ACTION( *this, recmining, { _self, "active"_n }, { miner } );
                _miningqueue.erase( itr );
                
                itr = _miningqueue.begin();
                n++ ;
            }
        }

        ACTION pushorder( const name &account, asset &eos, string &straddorder ) {
            require_auth(account);

            auto itr_players = join_game_processing( account ) ;

            auto v_str = explode( straddorder, ' ' ) ;
            eosio_assert(v_str.size() == 2, "Error memo");

            auto type_coin = coin::str_to_coin_type( v_str[0] ) ;
            auto n_coin = string_to_int( v_str[1] ) ;
            vector<uint64_t> pcoins ;
            auto citr = _coins.begin() ;
            for ( auto cid : itr_players->coins ) {
                citr = _coins.find( cid ) ;
                if ( citr->type == type_coin ) {
                    pcoins.push_back( cid ) ;
                    if ( pcoins.size() == n_coin ) break ;
                }
            }
            eosio_assert( pcoins.size() == n_coin, "Player dont have enough coins for sell order");

            order_t _orders( get_self(), get_self().value );
            _orders.emplace( account, [&](auto &o) {
                o.id = _orders.available_primary_key();
                o.account = account.value ;
                o.bid = eos ;
                o.the_coins_for_sell = pcoins  ;// set coins
            });
        } // pushorder()
        
        ACTION cancelorder( const name &account, const uint64_t &order_id ) {
            require_auth(account);

            order_t _orders( get_self(), get_self().value );
            auto &itr = _orders.get(order_id, "Trade id is not found" );
            eosio_assert(itr.account == account.value, "Account does not match");
            
            _orders.erase(itr);
        } // pushorder()

        ACTION takeorder( const name &buyer, const uint64_t &order_id, asset &eos );

        ACTION claim( name &from ) {
            require_auth(get_self());
            _contract_dividend.claim( from, _contract_kyubey.get_balance( from, TOKEN_SYMBOL ) );
        }

        [[eosio::action("collclaim")]] void collclaim( const name &account, uint8_t &type ) {
            // require_auth(account);
            eosio_assert( type < 23, "Type error");

            collection_t _collection( get_self(), account.value );
            auto itr = _collection.get_or_create( get_self(), st_collection { .records = vector<uint64_t> (22,0) } );
            auto v_r( collection_counter( account ) );
            type --;
            // for( const auto& ritr : itr.records ) 
            if ( v_r[type] > itr.records[type] ) {
                SEND_INLINE_ACTION( *this, reccollclaim, { _self, "active"_n }, { account, type } );
                itr.records[type] = v_r[type] ;
                _collection.set( itr, get_self() ) ;
            }
            
        }

        ACTION test() {
            require_auth(get_self());
            //auto v_seed = merge_seed( seed ) ;
            //token_mining(get_self(), asset( string_to_price("1.0000"), CCC_SYMBOL ), "test mining 1 CCC");
            //print( findcoinpos( v_seed[0]) );
            //newcoinbypos( N(cccmining555), findcoinpos( v_seed[0] ) ) ;
        }
        [[eosio::action("test1")]] void test1( const name &tester ) {
            require_auth(get_self());
            
            uint64_t type = 111, number = 111 ;
            // SEND_INLINE_ACTION( *this, setcoin, { _self, "active"_n }, { tester, type, number} );
           
            //for ( uint64_t yy = 0 ; yy < _coinvalues.size() ; yy++ ) {
                for ( uint64_t xx = 0 ; xx < _coinvalues[0].size(); xx++ ) {
                    type = ( xx * 100 + ( 0 + 1 ) ) ;
                    // number = 111 ;
                    SEND_INLINE_ACTION( *this, setcoin, { _self, "active"_n }, { tester, type, number} );
                    //if ( xx % 2 == 1 )
                    //    setcoin(tester, ( xx * 100 + ( yy + 1 ) ), 222) ;
                }
            //}
        }


        // rec
        ACTION receipt(const st_rec_takeOrder& take_order_record) {
            require_auth(get_self());
        }
        ACTION recmining( const name &miner ) {
            require_auth(get_self());
        }
        [[eosio::action("reccollc")]] void reccollclaim( const name &account, uint8_t &type ) {
            require_auth(get_self());
        }
 
    public:
        void apply(uint64_t receiver, uint64_t code, uint64_t action) ;
};

vector<uint64_t> cryptojinian::merge_seed(const capi_checksum256 &s1) {
    uint64_t hash = 0;
    vector<uint64_t> v_hash ;
    for (int i = 0; i < 32; ++i) {
        hash ^= (s1.hash[i]) << ((i & 7) << 3);
        //  hash ^= (s1.hash[i] ^ s2.hash[31-i]) << ((i & 7) << 3);
        v_hash.push_back( hash ) ;
    }
    return v_hash;
}

void cryptojinian::init() {
    require_auth(get_self());
    _global.set( st_global{ .id = 0, .remainamount = 429600 } , get_self() );
    _contract_kyubey.create( get_self(), asset( CCC_MAX_SUPPLY, CCC_SYMBOL ) );
}

void cryptojinian::apply(uint64_t receiver, uint64_t code, uint64_t action) {
    auto &thiscontract = *this;
    if (action == ( "transfer"_n ).value && code == ( "eosio.token"_n ).value ) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != get_self().value) return;
    switch (action) {
        EOSIO_DISPATCH_HELPER(cryptojinian,
                  (init)
                  (setcoin)
                  (mining)
                  (pushorder)
                  (cancelorder)
                  (takeorder)
                  (claim)
                  (collclaim)
                  (test)
                  (test1)
                  (receipt)
                  (recmining)
                  (reccollclaim)
        )
    }
}
        
extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        cryptojinian p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        p.apply(receiver, code, action);
        eosio_exit(0);
    }
}

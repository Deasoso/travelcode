/**
 *  @dev deaso, yukiexe
 *  @copyright Andoromeda
 */
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <algorithm>

#include "config.hpp"
#include "utils.hpp"
#include "kyubey.hpp"
#include "dividend.hpp"

using namespace eosio ;
using namespace config ;
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
        TABLE playerinfo : kyubeytool::dividend::st_player_info {};
    
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

        struct [[eosio::table("buybackqueue")]]  st_buybackqueue {
            asset limit ;
            asset price ;
        };

        typedef singleton<"global"_n, st_global> singleton_global_t;
        typedef eosio::multi_index<"player"_n, player> player_t;
        typedef eosio::multi_index<"coin"_n, coin> coin_t;
        typedef eosio::multi_index<"usedcoins"_n, usedcoins> usedcoins_t;
        typedef eosio::multi_index<"miningqueue"_n, st_miningqueue> miningqueue_t;
        typedef eosio::multi_index<"order"_n, order> order_t;
        typedef singleton<"collection"_n, st_collection> collection_t;
        typedef singleton<"buybackqueue"_n, st_buybackqueue> singleton_buybackqueue_t;

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
        void setcoin(const name &owner, const uint64_t &type, const uint64_t &number);
        uint64_t addcoincount( uint64_t type );
        uint64_t findcoinpos( uint32_t &input );
        void newcoinbypos(const name owner, const uint64_t pos);
        ACTION exchange(const std::string inputs);
        ACTION exchangedown(const uint64_t inputid, const uint64_t goal);
        void SplitString(const std::string& s, vector<uint64_t>& v, const std::string& c);

        auto join_game_processing(const name &account) {
            auto itr_players = _players.find(account.value);
            if (itr_players == _players.end()) { // noob
                itr_players = _players.emplace(get_self(), [&](auto &p) {
                    p.playername = account.value;
                    p.sponsor = DEF_SPONSOR.value;
                });
                // itr_players = _players.find( account.value ) ;
            }
            return itr_players;
        } // join_game_processing()

        void token_mining( name miner, asset quantity, string memo );
        void token_mining_with_stake(name miner, asset quantity, string memo);
        inline const asset fee_processing( asset &quantity ) ;

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
                for ( uint8_t yy = 0 ; yy < counter.size() ; yy++ ) {
                    for ( uint8_t xx = 0 ; xx < counter[yy].size(); xx++ ) {
                        if ( citr->type == ( xx * 100 + ( yy + 1 ) ) )
                            counter[yy][xx]++;
                    }
                }
            }
            
            return counter ;
        }

        inline void collection_checker( uint64_t &r, const vector<uint64_t> &v ) {
            for ( uint8_t xx = 0 ; xx < v.size(); xx++ )
                if ( r > v[xx] ) r = v[xx] ;
        }

        void onTransfer(name from, name to, asset quantity, string memo);
        // onTransfer() ->
        void join_miningqueue( const name &miner, const asset &totalcost );
        void ref_processing(const name &miner, const name &sponsor = DEF_SPONSOR );
        /*
        void ibobuy( const name &buyer, asset &in ) {
            require_auth( buyer );
            // _contract_kyubey.buy( buyer, in );
        }*/
        inline vector<uint32_t> merge_seed(const capi_checksum256 &s1);

    public:
        ACTION init();
        ACTION clear() {
            require_auth(get_self());
            auto itr = _usedcoins.begin();
            while( itr != _usedcoins.end() ) {
                _usedcoins.erase(itr);
                itr = _usedcoins.begin();
            }
        }
        ACTION transfer(name from, name to, asset quantity, string memo) {
            require_auth( from );
            _contract_kyubey.transfer(from, to, quantity, memo);
        }
        ACTION ownersetcoin(const name &owner, const uint64_t &type, const uint64_t &number) {
            require_auth(get_self());
            setcoin(owner, type, number);
        }
        
        void deletecoin(const uint64_t &id);
        void exchangecoin(const name &owner, const uint64_t &id);

        ACTION mining( const capi_checksum256 &seed ) {
            require_auth(get_self());

            miningqueue_t _miningqueue(get_self(), get_self().value);
            auto itr = _miningqueue.begin();
            if ( itr == _miningqueue.end() ) return ;

            const auto &mc = _global.get().miningcost();
            auto v_seed = merge_seed( seed ) ;
            uint8_t n = 0 ;
            name miner ;
            while( itr != _miningqueue.end() && n != v_seed.size() ) {
                miner = name(itr->miner) ;
                newcoinbypos( miner, findcoinpos( v_seed[n] ) ) ;
                token_mining( miner, asset( mc.amount * config::MINING_COEF, config::TOKEN_SYMBOL ),
                              "CCC mining.");
                
                SEND_INLINE_ACTION( *this, recmining, { _self, "active"_n }, { miner } );
                _miningqueue.erase( itr );
                
                itr = _miningqueue.begin();
                n++ ;
                if ( n > 2 ) return ;
            }
        }

        ACTION pushorder( const name &account, asset &eos, string &straddorder ) {
            // straddorder = type_order type_coin n_coin
            // type_order: 1 or 2
            // type_coin:  coin's type
            // n_coin:     coin's number
            require_auth(account);

            auto itr_players = join_game_processing( account ) ;

            auto v_str = explode( straddorder, ' ' ) ;
            eosio_assert(v_str.size() == 3, "Error memo");

            uint8_t type_order = string_to_int( v_str[0] ) ;
            auto type_coin = coin::str_to_coin_type( v_str[1] ) ;
            auto n_coin = string_to_int( v_str[2] ) ;
            vector<uint64_t> pcoins ;
            auto citr = _coins.begin() ;
            for ( auto cid : itr_players->coins ) {
                citr = _coins.find( cid ) ;
                if ( citr->owner != ("eosio.token"_n).value /* not on order */ &&
                     citr->type == type_coin ) {
                    pcoins.push_back( cid ) ;
                    if ( pcoins.size() == n_coin ) break ;
                }
            }
            eosio_assert( pcoins.size() == n_coin, "Player dont have enough coins for sell order");

            // transfer coin 所有权 to "eosio.token"_n
            for (auto cid : pcoins) {
                citr = _coins.find(cid);
                _coins.modify(citr, get_self(), [&](auto &c) {
                    c.owner = ("eosio.token"_n).value;
                });
            }

            // add TRADE_FEE
            eos.set_amount(eos.amount * (1 + TRADE_FEE));

            // push order
            order_t _orders( get_self(), get_self().value );
            uint64_t neworderid = type_order * 1000000;
            auto getorder = _orders.find(neworderid);
            while(getorder != _orders.end()){
                neworderid ++;
                getorder = _orders.find(neworderid);
            }
            _orders.emplace( get_self(), [&](auto &o) {
                o.id = neworderid;
                o.account = account.value ;
                o.bid = eos ;
                o.the_coins_for_sell = pcoins ; // set coins
                o.timestamp = current_time();
            });
        } // pushorder()
        
        ACTION cancelorder( const name &account, const uint64_t &order_id ) {
            require_auth(account);

            order_t _orders( get_self(), get_self().value );
            auto &itr = _orders.get(order_id, "Trade id is not found" );
            eosio_assert(itr.account == account.value, "Account does not match");
            
            // transfer coin 所有权 back to seller
            auto citr = _coins.begin() ;
            for (auto cid : itr.the_coins_for_sell) {
                citr = _coins.find(cid);
                _coins.modify(citr, get_self(), [&](auto &c) {
                    c.owner = itr.account;
                });
            }

            _orders.erase(itr);
        } // cancelorder()

        ACTION syscxlorder( const uint64_t &order_id ) {
            require_auth(get_self());

            order_t _orders( get_self(), get_self().value );
            auto &itr = _orders.get(order_id, "Trade id is not found" );

            // transfer coin 所有权 back to seller
            auto citr = _coins.begin() ;
            for (auto cid : itr.the_coins_for_sell) {
                citr = _coins.find(cid);
                _coins.modify(citr, get_self(), [&](auto &c) {
                    c.owner = itr.account;
                });
            }
            
            _orders.erase(itr);
        } // syscxlorder()

        void takeorder( const name &buyer, const uint64_t &order_id, asset &eos );

        ACTION claim( name &from ) {
            require_auth(get_self());
            _contract_dividend.claim( from, _contract_kyubey.get_balance( from, TOKEN_SYMBOL ) );
        }

        [[eosio::action("collclaim")]] void collclaim( const name &account, uint8_t &type ) {
            require_auth(account);
            eosio_assert( type < 23 + 6 + 1, "Type error");
            type --;
            
            collection_t _collection( get_self(), account.value );
            auto itr = _collection.get_or_create( get_self(), st_collection { .records = vector<uint64_t> (22 + 6 + 1,0) } );
            auto vv_cc = collection_counter( account ) ;

            uint64_t r ;
            if ( type < 22 ) {
                r = vv_cc[type][0] ;
                collection_checker( r, vv_cc[type] );

            } else if ( type == 22 ) { // 0, 2, 10
                r = vv_cc[0][0];
                collection_checker( r, vv_cc[0] ); 
                collection_checker( r, vv_cc[2] );
                collection_checker( r, vv_cc[10] );
               
            } else if ( type == 23 ) { // 1, 14, 7, 11, 12, 6, 15, 18, 21
                r = vv_cc[1][0] ;
                collection_checker( r, vv_cc[ 1] ); 
                collection_checker( r, vv_cc[14] );
                collection_checker( r, vv_cc[ 7] );
                collection_checker( r, vv_cc[11] );
                collection_checker( r, vv_cc[12] );
                collection_checker( r, vv_cc[ 6] );
                collection_checker( r, vv_cc[15] );
                collection_checker( r, vv_cc[18] );
                collection_checker( r, vv_cc[21] );

            } else if ( type == 24 ) { // 3, 13, 16 
                r = vv_cc[3][0] ;
                collection_checker( r, vv_cc[ 3] );
                collection_checker( r, vv_cc[13] );
                collection_checker( r, vv_cc[16] );
            
            } else if ( type == 25 ) { // 17, 5, 20
                r = vv_cc[17][0] ;
                collection_checker( r, vv_cc[17] );
                collection_checker( r, vv_cc[ 5] );
                collection_checker( r, vv_cc[20] );

            } else if ( type == 26 ) { // 9, 8
                r = vv_cc[9][0] ;
                collection_checker( r, vv_cc[ 9] );
                collection_checker( r, vv_cc[ 8] );

            } else if ( type == 27 ) { // 19, 4
                r = vv_cc[19][0] ;
                collection_checker( r, vv_cc[19] );
                collection_checker( r, vv_cc[ 4] );

            } else if ( type == 28 ) {
                r = vv_cc[0][0] ;
                for ( uint8_t yy = 0 ; yy < vv_cc.size() ; yy++ ) {
                    collection_checker( r, vv_cc[yy] );
                }
            }

            if ( r > itr.records[type] ) {
                if ( type == 28 )
                    _contract_dividend.collection_claim( account );   
                else
                    token_mining_with_stake( account, config::bouns_table(type), string("Bouns from collection claim.") );
                                
                SEND_INLINE_ACTION( *this, reccollclaim, { _self, "active"_n }, { account, type } );
                itr.records[type] = r ;
                _collection.set( itr, get_self() ) ;
            }else{
                eosio_assert(false, "Not Enough Coin");
            }   
        } // collclaim()

        ACTION joinbuybackq( const name &buyer, const asset &quantity ) {
            require_auth(buyer);
            eosio_assert(quantity.is_valid(), "invalid token transfer");
            eosio_assert(quantity.symbol == TOKEN_SYMBOL, "Only CCC token is allowed");
            eosio_assert(quantity.amount > 0, "must transfer a positive amount"); // 正數的結界
            auto buyer_balance = _contract_kyubey.get_balance( buyer, quantity.symbol );
            eosio_assert(buyer_balance > quantity, "Must have enough token.");
            
            singleton_buybackqueue_t buybackqueue( get_self(), buyer.value);
            eosio_assert( ! buybackqueue.exists() , "Entered buybackqueue before." ); 
            buybackqueue.set( st_buybackqueue { .limit = quantity, 
                                                .price = asset( 0, EOS_SYMBOL) }, get_self() );
            // set total
            singleton_buybackqueue_t bbq_self( get_self(), get_self().value);
            auto bbq = bbq_self.get_or_create( get_self(), st_buybackqueue { .limit = asset( 0, TOKEN_SYMBOL),
                                                                             .price = asset( 0, EOS_SYMBOL)
                                                                           } );
            bbq.limit += buybackqueue.get().limit ;
            bbq.price = asset( _contract_dividend._global.get().earnings_for_buyback, EOS_SYMBOL)
                      /= bbq.limit.amount ;
            bbq_self.set( bbq, get_self() );
        }

        ACTION outbuybackq( const name &buyer ){
            require_auth(buyer);
            singleton_buybackqueue_t buybackqueue( get_self(), buyer.value);
            eosio_assert( buybackqueue.exists(), "Did not entered buybackqueue before." );
            // set total
            singleton_buybackqueue_t bbq_self( get_self(), get_self().value);
            auto bbq = bbq_self.get();
            bbq.limit -= buybackqueue.get().limit ;
            bbq.price = asset( _contract_dividend._global.get().earnings_for_buyback, EOS_SYMBOL)
                      /= bbq.limit.amount ;
            bbq_self.set( bbq, get_self() );

            buybackqueue.remove();
        } // outbuybackq

        ACTION buyback( const name &buyer, asset &quantity ) {
            require_auth(get_self());
            eosio_assert(quantity.is_valid(), "invalid token transfer");
            eosio_assert(quantity.symbol == TOKEN_SYMBOL, "Only CCC token is allowed");
            eosio_assert(quantity.amount > 0, "must transfer a positive amount"); // 正數的結界
            auto buyer_balance = _contract_kyubey.get_balance( buyer, quantity.symbol );
            eosio_assert(buyer_balance > quantity, "Must have enough x.");
            
            singleton_buybackqueue_t buybackqueue( get_self(), buyer.value);
            eosio_assert( buybackqueue.exists(), "Did not entered buybackqueue before." ); 
            auto bbq_buyer = buybackqueue.get();
            eosio_assert( bbq_buyer.limit >= quantity, "Must have enough token limit.");
            
            singleton_buybackqueue_t bbq_self( get_self(), get_self().value);
            quantity /= bbq_self.get().price.amount ;
            asset delta( quantity.amount, EOS_SYMBOL ) ;
            if ( delta.is_valid() && delta.amount > 0) { 
                action(permission_level{ _self, "active"_n},
                    "eosio.token"_n, "transfer"_n,
                    make_tuple( _self, buyer, delta,
                    string("Claim buyback."))
                ).send();

                bbq_buyer.limit -= quantity ;
                buybackqueue.set( bbq_buyer, get_self() );
            }
        } // buyback

        ACTION autobuyback(  const name &buyer ) {
            require_auth(get_self());
            //eosio_assert(quantity.is_valid(), "invalid token transfer");
            //eosio_assert(quantity.symbol == TOKEN_SYMBOL, "Only CCC token is allowed");
            //eosio_assert(quantity.amount > 0, "must transfer a positive amount"); // 正數的結界
            auto buyer_balance = _contract_kyubey.get_balance( buyer, TOKEN_SYMBOL );
            
            singleton_buybackqueue_t buybackqueue( get_self(), buyer.value);
            eosio_assert( buybackqueue.exists(), "Did not entered buybackqueue before." ); 
            auto bbq_buyer = buybackqueue.get();
            // eosio_assert( bbq_buyer.limit >= quantity, "Must have enough token limit.");
            auto quantity = bbq_buyer.limit;
            eosio_assert(buyer_balance > quantity, "Must have enough token.");
            
            singleton_buybackqueue_t bbq_self( get_self(), get_self().value);
            quantity /= bbq_self.get().price.amount ;
            asset delta( quantity.amount, EOS_SYMBOL ) ;
            if ( delta.is_valid() && delta.amount > 0) { 
                action(permission_level{ _self, "active"_n},
                    "eosio.token"_n, "transfer"_n,
                    make_tuple( _self, buyer, delta,
                    string("Claim buyback."))
                ).send();

                bbq_buyer.limit -= quantity ;
                buybackqueue.set( bbq_buyer, get_self() );
            }
        } // buyback

        ACTION test() {
            require_auth(get_self());
            
            uint32_t x = 428600 ;
            findcoinpos( x ) ;
        }

        // rec
        ACTION receipt(const st_rec_takeOrder& take_order_record) {}

        ACTION issue( name to, asset quantity, string memo ){
            _contract_kyubey.issue(to, quantity, memo);
        }
        
        ACTION recmining( const name &miner ) {
            require_auth(get_self());
        }
        [[eosio::action("reccollc")]] void reccollclaim( const name &account, uint8_t &type ) {}
 
    public:
        void apply(uint64_t receiver, uint64_t code, uint64_t action) ;
};

vector<uint32_t> cryptojinian::merge_seed(const capi_checksum256 &s) {
    uint32_t hash ;
    // uint16_t s16[4] ;
    vector<uint32_t> v_hash ;
    for (uint8_t i = 0 ; i < 32 ; i += 4 ) {
        hash = ( s.hash[i] << 24 ) | ( s.hash[i+1] << 16 ) | ( s.hash[i+2] << 8 ) | s.hash[i+3] ;
        // hash = ( s16[0] << 48 ) | ( s16[1] << 32 ) | ( s16[2] << 16 )  | s16[3] ;
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
    if ( code == ( "eosio.token"_n ).value && action == ( "transfer"_n ).value ) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != get_self().value) return;
    switch (action) {
        EOSIO_DISPATCH_HELPER(cryptojinian,
                  (init)
                  (issue)
                  (clear)
                  (transfer)
                  (ownersetcoin)
                  (mining)
                  (pushorder)
                  (cancelorder)
                  (syscxlorder)
                  (exchange)
                  (exchangedown)
                  /*(takeorder)*/
                  (claim)
                  (collclaim)
                  (joinbuybackq)
                  (outbuybackq)
                  (buyback)
                  (autobuyback)
                  (test)
                  /*(test1)*/
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

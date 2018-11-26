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

using namespace eosio ;

class cryptojinian : public eosio::contract {
    public:
        cryptojinian(account_name self) :
        contract(self),
        _kyubey(self),
        _global(_self, _self),
        _miningqueue(_self, _self),
        _coins(_self, _self),
        _players(_self, _self),
        _usedcoins(_self, _self),
        _orders(_self, _self) {}

        [[eosio::action]] void init();
        // [[eosio::action]] void clear();     
        // [[eosio::action]] void test();
        // [[eosio::action]] void unstake(account_name from, uint64_t amount);
        // [[eosio::action]] void claim(account_name from);
        [[eosio::action]]
        void transfer(account_name   from,
                      account_name   to,
                      asset          quantity,
                      string         memo);
        [[eosio::action]] void setcoin(const account_name owner, const uint64_t type, const uint64_t number);

        uint64_t addcoincount(const uint64_t type);
        uint64_t findcoinpos(const uint64_t inputrandom);
        void newcoinbypos(const account_name owner, const uint64_t pos);
        void exchange(const std::string inputs);
        void SplitString(const std::string& s, vector<uint64_t>& v, const std::string& c);

        // [[eosio::action]]
        void pinOrder( const account_name &account, asset &eos, string &str_add_order ) {
            // 由於掛單不需要轉 token 進來，直接用 acton 就可以了
            require_auth(account);

            auto itr_players = _players.find( account ) ;
            eosio_assert( itr_players != _players.end(), "Player is not found"); // player 存在 check
            
            auto v_str = explode( str_add_order, ' ' ) ;
            auto type_coin = coin::str_to_coin_type( v_str[0] ) ;
            auto n_coin = string_to_int( v_str[1] ) ;
            uint64_t pn_coin = 0 ;
            vector<uint64_t> pcoins ;
            auto citr = _coins.begin() ;
            for ( auto && cid : itr_players->coins ) {
                citr = _coins.find( cid ) ;
                if ( citr->type == type_coin ) {
                    pn_coin += citr->number ;
                    pcoins.push_back( cid ) ;
                    if ( pn_coin >= n_coin ) break ;
                }
            }
            eosio_assert( pn_coin >= n_coin, "Player dont have enough coins for sell order");
            
            _orders.emplace( _self, [&](auto &o) {
                o.id = _orders.available_primary_key();
                o.account = account ;
                o.bid = eos ;
                o.the_coins_for_sell = pcoins  ;// set coins
            });

        } // add_order()

    private:
        struct [[eosio::table]] order {
            uint64_t id;
            account_name account;
            asset bid;
            vector<uint64_t> the_coins_for_sell ; // coins, for id
            time timestamp;

            auto primary_key() const { return id; }
            // auto get_unit_price() const { return bid / the_coins_for_sell.number  }
            EOSLIB_SERIALIZE(order, (id)(account)(bid)(the_coins_for_sell)(timestamp))
        };

        struct [[eosio::table]] player {
            account_name name;
            checksum256 seed;
            vector<uint64_t> coins; // coins, for id
            account_name sponsor = DEF_SPONSOR ;
            vector<account_name> refs ;

            auto primary_key() const { return name; }
            EOSLIB_SERIALIZE(player, (name)(seed)(coins)(sponsor)(refs) )
        };

        // @abi table coins i64
        struct [[eosio::table]] coin {
            uint64_t id;
            account_name owner;
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

        // @abi table global i64
        struct [[eosio::table]] st_global {
            uint64_t id = 0;
            checksum256 hash; // hash of the game seed, 0 when idle.
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

        struct [[eosio::table]] st_miningqueue {
            uint64_t id ;
            account_name miner ;

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(st_miningqueue, (id)(miner))
        };

        // @abi table usedcoins i64
        struct [[eosio::table]] usedcoins {
            // << 16 to fix usedspilt64;
            // << 32 to fix usedspilt6400;
            // << 48 to fix typecounts;
            uint64_t key = 0;
            uint64_t value = 0;

            auto primary_key() const { return key; }
            EOSLIB_SERIALIZE(usedcoins, (key)(value)) 
        };

        struct rec_takeOrder {
            order matched_order ;
            account_name buyer ;
            string message = "Order matched." ;
        };

        typedef singleton<N(global), st_global> singleton_global_t;
        singleton_global_t _global; 

        typedef eosio::multi_index<N(miningqueue), st_miningqueue> miningqueue_t;
        miningqueue_t _miningqueue; 

        typedef eosio::multi_index<N(order), order> order_t;
        order_t _orders;

        typedef eosio::multi_index<N(player), player> player_t;
        player_t _players;

        typedef eosio::multi_index<N(coin), coin> coin_t;
        coin_t _coins; 

        typedef eosio::multi_index<N(usedcoins), usedcoins> usedcoins_t;
        usedcoins_t _usedcoins;

        kyubey _kyubey ;

        /*
        uint64_t get_next_defer_id() {
            auto g = _global.get();    
            g.defer_id += 1;
            _global.set(g, _self);
            return g.defer_id;
        }*/

        template <typename... Args>
        void send_defer_action(Args&&... args) {
            transaction trx;
            trx.actions.emplace_back(std::forward<Args>(args)...);
            // trx.send(get_next_defer_id(), _self, false);
        }

        /*
        uint64_t randommath( const checksum256 &seed ) {
            require_auth(_self);
        
            return merge_seed(seed, seed);
        }*/

        inline vector<uint64_t> merge_seed(const checksum256 &s1) ;

        void onTransfer(account_name from, account_name to,
                        asset quantity, string memo);
        
        // onTransfer() ->
        void join_miningqueue( const account_name &miner, const asset &totalcost ) {
            require_auth(_self);

            // cost check
            const auto mc = _global.get().miningcost() ;
            const uint8_t times = totalcost.amount / mc.amount ;
            eosio_assert( times > 10, "You have mining too much times");

            // join mining waiting Q
            for ( uint8_t n = 0 ; n < times ; n++ ) {
                _miningqueue.emplace( _self, [&](auto &q) {
                    q.id = _miningqueue.available_primary_key();
                    q.miner = miner ;
                });
            }
        }

        // onTransfer() ->
        void take_order( const uint64_t &order_id, const asset &eos, const account_name &toAccount ) {
            require_auth(toAccount);
  
            auto itr = _orders.find( order_id );
            eosio_assert(itr != _orders.end(), "Trade id is not found");
            eosio_assert(itr->bid == eos, "Asset does not match");
            
            // 一個轉移 coin 的 move
            for ( auto && cid : itr->the_coins_for_sell ) {
                _coins.modify( _coins.find( cid ), _self, [&](auto& c) {
                    c.owner = toAccount ;
                });
            }

            // 打 log
            const rec_takeOrder _tor{
                .matched_order = *itr,
                .buyer = toAccount,
            }; 

            action( permission_level{_self, N(active)},
                    _self, N(receipt), _tor )
            .send();
        
            // 刪了
            _orders.erase(itr) ;

        } // take_order()

        // onTransfer() ->
        void ref_processing(const account_name &miner ) {
            ref_processing( miner, DEF_SPONSOR );
        }
        void ref_processing(const account_name &miner, const account_name &sponsor ) ;

        // onTransfer() ->
        void ibobuy( const account_name &buyer, asset &in ) {
            require_auth( buyer );
            _kyubey.buy( buyer, in );
        }

        // rec
        void receipt(const rec_takeOrder& take_order_record) {
            require_auth(_self);
        }

    public:
        [[eosio::action]]
        void mining( const checksum256& seed ) {
            require_auth(_self);
            auto v_seed = merge_seed( seed ) ;
            uint8_t n = 0 ;
            for( auto &itr : _miningqueue ) {
                newcoinbypos( itr.miner, findcoinpos( v_seed[n] ) ) ;
                _kyubey.issue( itr.miner, asset( string_to_price("1.000"), CCC_SYMBOL ) , "mining 1 CCC" ) ;
                _miningqueue.erase( itr ) ;
                
                n++ ;
                if ( n == 32 ) break ;
            }
        }

        void apply(account_name code, action_name action) ;
};

vector<uint64_t> cryptojinian::merge_seed(const checksum256 &s1) {
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
    require_auth(_self);
    _global.set( st_global{ .id = 0, .remainamount = 429600 } , _self );
    _kyubey.create( _self, asset( CCC_MAX_SUPPLY, CCC_SYMBOL ) ) ;
}

void cryptojinian::apply(account_name code, action_name action) {
    auto &thiscontract = *this;

    if (action == N(transfer) && code == N(eosio.token) ) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != _self) return;
    switch (action) {
        EOSIO_API(cryptojinian, (init)(setcoin)(mining));
    };
}     
        
extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        cryptojinian p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}

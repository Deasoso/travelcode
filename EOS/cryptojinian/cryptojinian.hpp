/**
 *  @dev deaso, yukiexe
 *  @copyright Andoromeda
 */
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <cmath>

#include "config.hpp"
#include "utils.hpp"
#include "kyubey.hpp"

using namespace eosio ;

using std::string;
using eosio::symbol_name;
using eosio::asset;
using eosio::symbol_type;
using eosio::contract;
using eosio::permission_level;
using eosio::action;

class cryptojinian : public eosio::contract {
    public:
        cryptojinian(account_name self) :
        contract(self),
        _global(_self, _self),
        _coins(_self, _self),
        _players(_self, _self),
        _usedcoins(_self, _self),
        _orders(_self, _self) {}

        struct order {
            uint64_t id;
            account_name account;
            asset bid;
            vector<uint64_t> the_coins_for_sell ; // coins, for id
            time timestamp;

            auto primary_key() const { return id; }
            // auto get_unit_price() const { return bid / the_coins_for_sell.number  }
            EOSLIB_SERIALIZE(order, (id)(account)(bid)(the_coins_for_sell)(timestamp))
        };
        typedef eosio::multi_index<N(order), order> order_t;
        order_t _orders;

        struct rec_takeOrder {
            order matched_order ;
            account_name buyer ;
            string message = "Order matched." ;
        };

        // @abi action
        void receipt(const rec_takeOrder& take_order_record) {
            require_auth(_self);
        }

        void setcoin(const account_name owner, const uint64_t type, const uint64_t number);
        uint64_t addcoincount(const uint64_t type);
        void init();
        uint64_t findcoinpos(const uint64_t inputrandom);
        void newcoinbypos(const account_name owner, const uint64_t pos);
        void exchange(const vector<uint64_t> inputs);

        void onTransfer(account_name from, account_name to,
                    asset quantity, string memo);



        void apply(account_name code, action_name action) {
            auto &thiscontract = *this;

            if (action == N(transfer)) {
                auto transfer_data = unpack_action_data<st_transfer>();
                onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
                return;
            }
            if (code != _self) return;
            switch (action) {
                EOSIO_API(cryptojinian, (init)(mining));
            };
        }     
        
        // @abi action
        // void miningcost() { return _global.miningcost().amount; } 

        // @abi action
        void mining( const asset &totalcost, const uint8_t &times ) {
            require_auth(_self);
            // cost check
            const auto mc = _global.begin()->miningcost() ;
            eosio_assert( totalcost.amount != mc.amount * times , "invalid EOS ");

            // add mining waiting Q

        }

        // @abi action
        uint64_t randommath( const checksum256 &seed ) {
            require_auth(_self);

            return merge_seed(seed, seed);
        }

        // @abi action
        void add_order( const account_name &account, asset &eos, string &str_add_order ) {
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

        inline uint64_t merge_seed(const checksum256 &s1, const checksum256 &s2) {
            uint64_t hash = 0;
            for (int i = 0; i < 32; ++i) {
                hash ^= (s1.hash[i]) << ((i & 7) << 3);
                //  hash ^= (s1.hash[i] ^ s2.hash[31-i]) << ((i & 7) << 3);
            }
            return hash;
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

        // @abi table players i64
        struct player {
            account_name name;
            checksum256 seed;
            vector<uint64_t> coins; // coins, for id

            auto primary_key() const { return name; }
            EOSLIB_SERIALIZE(player, (name)(coins))//(seed)
        };
        typedef eosio::multi_index<N(player), player> player_index;
        player_index _players;

        // @abi table coins i64
        struct coin {
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
        typedef eosio::multi_index<N(coin), coin> coin_t;
        coin_t _coins; 


        // @abi table global i64
        struct global {
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
            EOSLIB_SERIALIZE(global, (id)(hash)(remainamount)) 
        };
        typedef eosio::multi_index<N(global), global> global_index;
        global_index _global;

        // @abi table usedcoins i64
        struct usedcoins {
            // << 16 to fix usedspilt64;
            // << 32 to fix usedspilt6400;
            // << 48 to fix typecounts;
            uint64_t key = 0;
            uint64_t value = 0;

            auto primary_key() const { return key; }
            EOSLIB_SERIALIZE(usedcoins, (key)(value)) 
        };

        typedef eosio::multi_index<N(usedcoins), usedcoins> usedcoins_index;
        usedcoins_index _usedcoins;

};

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        cryptojinian p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}

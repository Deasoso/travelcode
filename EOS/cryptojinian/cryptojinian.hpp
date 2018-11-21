/**
 *  @dev deaso, yukiexe
 *  @copyright Andoromeda
 */
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
//#include "../eosio.token/eosio.token.hpp"
#include <cmath>
#include <string>
#include <vector>

typedef double real_type;

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
        _players(_self, _self){}
        void setcoin(const account_name owner, const uint64_t type, const uint64_t number);

        void onTransfer(account_name from, account_name to,
                    asset quantity, string memo);        
        void apply(account_name code, action_name action) {
            auto &thiscontract = *this;

            if (action == N(transfer)) {
                auto transfer_data = unpack_action_data<currency::transfer>();
                onTransfer(transfer_data.from, transfer_data.to, extended_asset(transfer_data.quantity, code), transfer_data.memo);
                return;
            }
            if (code != _self) return;
            switch (action) {
                EOSIO_API(cryptojinian, (setcoin));
            };
        }     
        
        void mining( const asset &cost ) {
            // cost check
            auto mc = _global.miningcost() ;
            eosio_assert( cost != mc , "invalid EOS ");

            // start mining
            // waiting mining

        }

        // @abi action
        void mining( const asset &totalcost, const uint8_t &tims ) {
            for ( auto i : times ) mining( cost ) ;

            // eosio_assert( m != cost , "invalid EOS ");

        }



        // @abi action
        auto randommath( const checksum256 &seed ) {
            require_auth(_self);

            return merge_seed(seed, seed);
        }

    private:

        inline auto merge_seed(const checksum256 &s1, const checksum256 &s2) {
            uint64_t hash = 0;
            for (int i = 0; i < 32; ++i) {
                hash ^= (s1.hash[i]) << ((i & 7) << 3);
                //  hash ^= (s1.hash[i] ^ s2.hash[31-i]) << ((i & 7) << 3);
            }
            return hash;
        }
        struct player {
            account_name name;
            // checksum256 seed;
            std::vector<uint64_t> coins; // coins, for id

            auto primary_key() const { return name; }
            EOSLIB_SERIALIZE(player, (name)(coins))//(seed)
        };
        typedef eosio::multi_index<N(player), player> player_index;
        player_index _players;

        struct coin {
            uint64_t id;
            account_name owner;
            uint64_t type; //type :xxyy, xx for valuetype, yy for cointype
            //BTC 1 cointype, ETH 2 cointype
            //for example: 2 valuetype BTC: 201
            uint64_t number;

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(coin, (id)(owner)(type)(value)(number))
        };
        typedef eosio::multi_index<N(coin), coin> coin_t;
        coin_t _coins; 

        struct global {
            uint64_t id = 0;
            checksum256 hash; // hash of the game seed, 0 when idle.
            std::map<uint64_t, uint64_t> coins; // 1 uint64_t for 64 coins
            std::map<uint64_t, uint64_t> usedspilt64; // for faster finding
            std::map<uint64_t, uint64_t> usedspilt6400; // for faster finding
            //example(for uint8_t):
            //coins: [1,9,0,11] ([00000001.00001001,00000000,00001011])
            //remainspilt8: [1,2,0,3]
            //remainspilt16: [3,3]
            uint64_t remainamount; // return remain coin amounts
            std::map<uint64_t, uint64_t> typecounts;

            const auto miningcost() {
                return cost_table( remainamount ) ;
                /*
                int i = 0 ;
                for ( i = 0 ; i < 20 ; i++ )
                    if ( remainamount >= ( i / 100 ) * totalmount )
                        return asset( "EOS", initminingcost * pow( 1.1, i ) ) ;
                return asset( "EOS", initminingcost * pow( 1.1, --i ) ) ;
                */
            }

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(global, (id)(hash)(coins)(usedspilt64)(usedspilt6400)(typecounts)) 
        };
        typedef eosio::multi_index<N(global), global> global_index;
        global_index _global;
};

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        cryptojinian p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}

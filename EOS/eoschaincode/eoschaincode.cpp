#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <algorithm>

#include "utils.hpp"
// #include "token.hpp"
#include "config.hpp"

using namespace eosio ;
using namespace config ;

CONTRACT eoschaincode : public eosio::contract {
    public:
        eoschaincode( name receiver, name code, datastream<const char*> ds ) :
        contract( receiver, code, ds ),
        _coins(receiver, receiver.value){}
        // _token( receiver, code, ds ){}
        // Contract management
        // ACTION init();
        // ACTION recharge(name from, asset amount, string memo);
        void apply(uint64_t receiver, uint64_t code, uint64_t action) ;
        // token _token ;
        // TABLE accounts : token::account {};
        // TABLE stat : token::currency_stats {};
        TABLE st_miningqueue {
            uint64_t id ;
            capi_name miner ;

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(st_miningqueue, (id)(miner))
        };
        TABLE coin {
            uint64_t id;
            capi_name owner;
            uint64_t type;

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(coin, (id)(owner)(type))
        };

        // ACTION issue( name to, asset quantity, string memo ){
        //     _token.issue(to, quantity, memo);
        // }

        ACTION mining( const capi_checksum256 &seed ) {
            require_auth(_self);

            miningqueue_t _miningqueue(_self, _self.value);
            auto itr = _miningqueue.begin();
            if ( itr == _miningqueue.end() ) return ;

            auto v_seed = merge_seed( seed ) ;
            uint32_t n = 0 ;
            name miner ;
            while( itr != _miningqueue.end() && n != v_seed.size() ) {
                miner = name(itr->miner) ;
                setcoin(miner, v_seed[n]) ;

                _miningqueue.erase(itr);
                
                itr = _miningqueue.begin();
                n++ ;
                if ( n > config::MINING_TIMES ) return ;
            }
        }

        typedef eosio::multi_index<"miningqueue"_n, st_miningqueue> miningqueue_t;
        typedef eosio::multi_index<"coin"_n, coin> coin_t;
        coin_t _coins; 

    private:
        void setcoin(const name &owner, const uint64_t &type);
        void onTransfer(name from, name to, asset quantity, string memo);
        void join_miningqueue( const name &miner);
        inline vector<uint32_t> merge_seed(const capi_checksum256 &s);
};

void eoschaincode::setcoin(const name &owner, const uint64_t &type) {
    require_auth(_self);
    //two-way binding.
    auto itr_newcoin = _coins.emplace(get_self(), [&](auto &c) {
        c.id = _coins.available_primary_key();
        c.owner = owner.value;
        c.type = type;
    });
}

void eoschaincode::onTransfer(name from, name to, asset quantity, std::string memo) {
    if (from == _self || to != _self) return;   
    require_auth(from);
    eosio_assert(quantity.is_valid(), "invalid token transfer");
    eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed");
    eosio_assert(quantity.amount > 1, "Must transfer a positive amount"); // 正數的結界

    auto params = explode(memo, ' ');
    eosio_assert(params.size() <= 5, "Error memo");

    if (params[0] == "mining") { // mining
        join_miningqueue(from);
        return;
    }
}

void eoschaincode::apply(uint64_t receiver, uint64_t code, uint64_t action) {
    auto &thiscontract = *this;
    if ( code == ( "eosio.token"_n ).value && action == ( "transfer"_n ).value ) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != get_self().value) return;
    switch (action) {
        EOSIO_DISPATCH_HELPER(eoschaincode,
                  (mining)
        )
    }
}

void eoschaincode::join_miningqueue(const name &miner)
{
    miningqueue_t _miningqueue(get_self(), get_self().value);
    _miningqueue.emplace( _self, [&](auto &q) {
        q.id = _miningqueue.available_primary_key();
        q.miner = miner.value;
    });
}

vector<uint32_t> eoschaincode::merge_seed(const capi_checksum256 &s) {
    uint32_t hash ;
    // uint16_t s16[4] ;
    vector<uint32_t> v_hash ;
    for (uint32_t i = 0 ; i < 32 ; i += 4 ) {
        hash = ( s.hash[i] << 24 ) | ( s.hash[i+1] << 16 ) | ( s.hash[i+2] << 8 ) | s.hash[i+3] ;
        v_hash.push_back( hash ) ;
        hash = ( s.hash[i+3] << 24 ) | ( s.hash[i+2] << 16 ) | ( s.hash[i+1] << 8 ) | s.hash[i] ;
        v_hash.push_back( hash ) ;
        // hash = ( s16[0] << 48 ) | ( s16[1] << 32 ) | ( s16[2] << 16 )  | s16[3] ;
    }
    return v_hash;
}

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        eoschaincode p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        p.apply(receiver, code, action);
        eosio_exit(0);
    }
}
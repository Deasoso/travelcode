#pragma once
#include <eosiolib/eosio.hpp>

using namespace eosio ;

CONTRACT empty : public eosio::contract {

};

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        // empty p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        // p.apply(receiver, code, action);
        eosio_exit(0);
    }
}
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <algorithm>

#include "utils.hpp"
#include "token.hpp"
#include "config.hpp"

using namespace eosio ;
using namespace config ;

CONTRACT cccrecharge : public eosio::contract {
    public:
        cccrecharge( name receiver, name code, datastream<const char*> ds ) :
        contract( receiver, code, ds ),
        _token( receiver, code, ds ){}
        // Contract management
        ACTION init();
        ACTION test(name from);
        void apply(uint64_t receiver, uint64_t code, uint64_t action) ;
        token _token ;
        TABLE accounts : token::account {};
        TABLE stat : token::currency_stats {};
        ACTION issue( name to, asset quantity, string memo ){
            _token.issue(to, quantity, memo);
        }

    private:
        void onTransfer(name from, name to, asset quantity, string memo);
};

void cccrecharge::init(){
    require_auth(_self);
    _token.create(_self, asset(CCC_MAX_SUPPLY, CCC_SYMBOL) );
}

void cccrecharge::test(name from){
    require_auth(name(( "chainbankeos"_n ).value));
    asset out = asset(100, CCC_SYMBOL);  
    _token.no_permission_issue(from, out, "");
}

void cccrecharge::onTransfer(name from, name to, asset quantity, std::string memo) {
    asset out = asset(100, CCC_SYMBOL);  
    _token.no_permission_issue(from, out, "");
}

void cccrecharge::apply(uint64_t receiver, uint64_t code, uint64_t action) {
    auto &thiscontract = *this;
    if ( code == ( "eosio.token"_n ).value && action == ( "transfer"_n ).value ) {
        auto transfer_data = unpack_action_data<st_transfer>();
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != get_self().value) return;
    switch (action) {
        EOSIO_DISPATCH_HELPER(cccrecharge,
                  (init)
                  (test)
                  (issue)
        )
    }
}

extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        cccrecharge p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        p.apply(receiver, code, action);
        eosio_exit(0);
    }
}
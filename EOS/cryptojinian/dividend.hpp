#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>

#include <string>

namespace kyubeytool {

   using std::string;
   typedef account_name name ;

   class dividend : public contract {
      public:
         dividend( name self ):
            contract(self),
            _global( get_self(), get_self() ){}

         // ACTION init() { require_auth(_self); }

         [[eosio::action]] void make_profit(uint64_t delta, asset total_staked);
         [[eosio::action]] void stake(name from, asset delta);
         [[eosio::action]] void claim(name from);

        struct [[eosio::table]] st_global {
            uint64_t defer_id;
            uint128_t earnings_per_share;

            name last;
            //time st, ed;
            //uint64_t pool;

            auto primary_key() const { return defer_id; }
            EOSLIB_SERIALIZE(st_global, (defer_id)(earnings_per_share)(last)) 
        };

         typedef singleton<N(dividend), st_global> singleton_global_t;
         singleton_global_t _global;
   };

   void dividend::make_profit(uint64_t delta, asset total_staked)
   {
      auto g = _global.get();
      g.earnings_per_share += MAGNITUDE * delta / total_staked.amount;
      _global.set(g, get_self());
   }

   void dividend::stake(name from, asset delta)
   {
      //require_auth(from);
      //eosio_assert(delta.amount > 0, "must stake a positive amount");
      /*
    singleton_voters _voters(_self, from.value);
    auto v = _voters.get_or_create(_self, voter_info{.staked = asset(0, TOKEN_SYMBOL)});
    auto g = _global.get();
    v.staked += delta;
    v.payout += g.earnings_per_share * delta.amount / MAGNITUDE;
    _voters.set(v, _self);
    g.total_staked += delta;
    _global.set(g, _self);
    */
}

void dividend::claim(name from) {
    require_auth(get_self());
    /*
    singleton_voters _voters(_self, from.value);
    auto v = _voters.get_or_create(_self, voter_info{});
    auto g = _global.get();

   
    auto delta = asset(0, TOKEN_SYMBOL);
    auto raw_dividend = g.earnings_per_share * v.staked.amount / MAGNITUDE;
    if (raw_dividend > v.payout) delta.amount = raw_dividend - v.payout;

    v.payout = raw_dividend;
    _voters.set(v, _self);

    if (delta.amount > 0) {
        action(
            permission_level{_self, "active"_n},
            TOKEN_CONTRACT, "transfer"_n,
            make_tuple(_self, from, delta,
                string("claim dividend."))
        ).send();        
    }
    */
}

};
// EOSIO_ABI( eosio::dividend, (create)(issue)(transfer) )
#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>

#include <string>

namespace kyubeytool {

   using std::string;

   class dividend : public contract {
      public:
         dividend( name receiver, name code, datastream<const char*> ds ) :
            contract( receiver, code, ds ),
            _global( receiver, receiver.value ){}

         void make_profit(uint64_t delta, asset total_staked);
         void claim(name &from, asset quantity);

         struct st_d_global {
            uint64_t defer_id = 0 ;
            uint128_t earnings_per_share = 0 ;
            uint64_t earnings_for_buyback = 0 ;
            uint64_t earnings_for_collection = 0 ;
            capi_name last;

            auto primary_key() const { return defer_id; }
            EOSLIB_SERIALIZE(st_d_global, (defer_id)(earnings_per_share)(earnings_for_buyback)(earnings_for_collection)(last)) 
         };

         typedef singleton<"dividend"_n, st_d_global> singleton_global_t;
         singleton_global_t _global;

         uint64_t get_next_defer_id() {
            auto g = _global.get();    
            g.defer_id ++;
            _global.set(g, get_self());
            return g.defer_id;
         }

         template <typename... Args>
         void send_defer_action(Args&&... args) {
            transaction trx;
            trx.actions.emplace_back(std::forward<Args>(args)...);
            trx.send(get_next_defer_id(), get_self(), false);
         }

   };

void dividend::make_profit(uint64_t delta, asset total_staked) {
    auto g = _global.get_or_create( _self, st_d_global{});
    g.earnings_per_share += MAGNITUDE * delta * 0.6 / total_staked.amount;
    g.earnings_for_buyback += delta * 0.3 ; 
    g.earnings_for_collection += delta * 0.1 ;
    _global.set(g, get_self());
}
    /*
   void dividend::stake(name from, asset delta)
   {
      //require_auth(from);
      //eosio_assert(delta.amount > 0, "must stake a positive amount");
      
    singleton_voters _voters(_self, from.value);
    auto v = _voters.get_or_create(_self, voter_info{.staked = asset(0, TOKEN_SYMBOL)});
    auto g = _global.get();
    v.staked += delta;
    v.payout += g.earnings_per_share * delta.amount / MAGNITUDE;
    _voters.set(v, _self);
    g.total_staked += delta;
    _global.set(g, _self);
    }*/

void dividend::claim(name &from, asset quantity) {
    require_auth(get_self());
    auto g = _global.get();
    int64_t raw_dividend = g.earnings_per_share * quantity.amount / MAGNITUDE;
    asset delta( raw_dividend, EOS_SYMBOL);

    if ( delta.is_valid() && delta.amount > 0) {
       
      action(permission_level{ _self, "active"_n},
            "eosio.token"_n, "transfer"_n,
            make_tuple( _self, from, delta,
                string("claim dividend."))
      ).send();

        g.last = from.value ;
        _global.set(g, get_self());
       
    }
   
}

} // namespace kyubeytool
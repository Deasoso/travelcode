#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/transaction.hpp>

#include <string>

namespace kyubeytool {

   using std::string;

   class dividend : public contract {
      public:
         dividend( name receiver, name code, datastream<const char*> ds ) :
            contract( receiver, code, ds ),
            _global( receiver, receiver.value ){}

         static constexpr uint128_t MAGNITUDE = 1ll<<32;

         struct st_player_info {
            // asset staked;
            asset payout = asset(0, config::DIVIDEND_EX_SYMBOL.get_symbol());
         };
         /*
         struct refund_request {
            time request_time;
            asset amount;
         };*/
         void cleanbuyback();

         void make_profit(uint64_t delta, asset total_staked);
         void stake(name &from, asset delta);
         void claim(name &from, asset quantity);
         void collection_claim( const name &from );

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
         typedef singleton<"playerinfo"_n, st_player_info> singleton_playerinfo_t;
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

void dividend::cleanbuyback() {
    auto g = _global.get_or_create( _self, st_d_global{});
    g.earnings_for_buyback = 0 ; 
    _global.set(g, get_self());
}

void dividend::make_profit(uint64_t delta, asset total_staked) {
    auto g = _global.get_or_create( _self, st_d_global{});
    g.earnings_per_share += MAGNITUDE * delta * 0.6 / total_staked.amount;
    g.earnings_for_buyback += delta * 0.3 ; 
    g.earnings_for_collection += delta * 0.1 ;
    _global.set(g, get_self());
}

void dividend::stake(name &from, asset delta) {
   eosio_assert(delta.amount > 0, "must stake a positive amount");
   eosio_assert(delta.symbol == config::DIVIDEND_EX_SYMBOL.get_symbol(), "must be token.");

   singleton_playerinfo_t _playerinfo(get_self(), from.value);
   auto pi = _playerinfo.get_or_create(get_self(), st_player_info{});
   auto g = _global.get();
   
   // only " asset += asset " has addition underflow & overflow checking
   pi.payout += asset( g.earnings_per_share * delta.amount / MAGNITUDE, pi.payout.symbol );
   _playerinfo.set(pi, _self);
}

void dividend::claim(name &owner, asset quantity) {
   require_auth(get_self());

   singleton_playerinfo_t _playerinfo(get_self(), owner.value);
   auto pi = _playerinfo.get_or_create(get_self(), st_player_info{});
   auto g = _global.get();

   auto delta = extended_asset(0, config::DIVIDEND_EX_SYMBOL);
   int64_t raw_dividend = g.earnings_per_share * quantity.amount / MAGNITUDE;
   if (raw_dividend > pi.payout.amount)
       delta.quantity.set_amount(raw_dividend - pi.payout.amount);

   pi.payout.set_amount(raw_dividend);
   _playerinfo.set(pi, get_self());

   if (delta.quantity.is_valid() && delta.quantity.amount > 0) {
      action(permission_level{_self, "active"_n},
             delta.get_extended_symbol().get_contract(), "transfer"_n,
             make_tuple(get_self(), owner, delta.quantity, string("claim dividend.")))
      .send();

      g.last = owner.value;
      _global.set(g, get_self());
   }
}

void dividend::collection_claim(const name &from) {
    require_auth(get_self());
    auto g = _global.get();
    int64_t raw_dividend = g.earnings_for_collection ;
    asset delta( raw_dividend, config::EOS_SYMBOL);

    if ( delta.is_valid() && delta.amount > 0) { 
      action(permission_level{ _self, "active"_n},
            "eosio.token"_n, "transfer"_n,
            make_tuple( _self, from, delta,
                string("Claim collection bouns."))
      ).send();

      g.earnings_for_collection = 0 ;
      _global.set(g, get_self());       
    }
}
/*
void dividend::unstake(name from, asset delta) {
    require_auth(from);
    singleton_voters _voters(_self, from.value);
    auto v = _voters.get_or_create(_self, voter_info{});
    auto g = _global.get();
    eosio_assert(delta <= v.staked, "don't have enough token for unstake");

    if (g.earnings_per_share * delta.amount / MAGNITUDE <= v.payout) {
        v.payout -= g.earnings_per_share * delta.amount / MAGNITUDE;
    } else {
        v.payout = 0;
    }

    v.staked -= delta;
    _voters.set(v, _self);   

    g.total_staked -= delta;
    _global.set(g, _self);

    singleton_dividend _dividend(_self, v.to.value);
    if (_dividend.exists()) {
        auto c = _dividend.get();
        c.total_votes -= delta.amount;
        _dividend.set(c, _self); 
    }

    singleton_refunds _refunds( _self, from.value );
    auto req = _refunds.get_or_create(_self, refund_request{.amount = asset(0, TOKEN_SYMBOL)});
    req.request_time = now();
    req.amount += delta;
    _refunds.set(req, _self);

    send_defer_refund_action(from);
}

void dividend::refund(name from) {
    require_auth( from );
    
    singleton_refunds refunds_tbl( _self, from.value );
    eosio_assert( refunds_tbl.exists(), "refund request not found" );
    auto req = refunds_tbl.get();

    // eosio_assert( req.request_time + refund_delay >= now(), "refund is not available yet" );
    // Until now() becomes NOW, the fact that now() is the timestamp of the previous block could in theory
    // allow people to get their tokens earlier than the 1 day delay if the unstake happened immediately after many
    // consecutive missed blocks.

    action(
        permission_level{_self, "active"_n},
        TOKEN_CONTRACT, "transfer"_n,
        make_tuple(_self, from, req.amount, string("unstake refund"))
    ).send();

    refunds_tbl.remove();
}

*/

} // namespace kyubeytool
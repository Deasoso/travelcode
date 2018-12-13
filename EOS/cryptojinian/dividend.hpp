#pragma once
<<<<<<< HEAD

#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>

#include <string>

namespace eosiosystem {
   class system_contract;
}

=======
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>

#include <string>

>>>>>>> b186e1526be65009a0243be138c4bcbeb7cda0c5
namespace kyubeytool {

   using std::string;

   class dividend : public contract {
      public:
<<<<<<< HEAD
         dividend( account_name self ):contract(self){}


         ACTION init();


         void transfer( account_name from,
                        account_name to,
                        asset        quantity,
                        string       memo );
      
      
         //inline asset get_supply( symbol_name sym )const;
         
         //inline asset get_balance( account_name owner, symbol_name sym )const;

      protected:
         // @abi table accounts i64  
         struct [[eosio::table]] account {
            asset    balance;

            uint64_t primary_key()const { return balance.symbol.name(); }
         };

          // @abi table stats i64
         struct [[eosio::table]] currency_stats {
            asset          supply;
            asset          max_supply;
            account_name   issuer;

            uint64_t primary_key()const { return supply.symbol.name(); }
         };

         typedef eosio::multi_index<N(accounts), account> accounts;
         typedef eosio::multi_index<N(stat), currency_stats> stats;

         void sub_balance( account_name owner, asset value );
         void add_balance( account_name owner, asset value, account_name ram_payer );

      public:
         struct transfer_args {
            account_name  from;
            account_name  to;
            asset         quantity;
            string        memo;
         };
   };
/*
   asset dividend::get_supply( symbol_name sym )const
   {
      stats statstable( _self, sym );
      const auto& st = statstable.get( sym );
      return st.supply;
   }

   asset dividend::get_balance( account_name owner, symbol_name sym )const
   {
      accounts accountstable( _self, owner );
      const auto& ac = accountstable.get( sym );
      return ac.balance;
   }
*/

void dividend::create( account_name issuer,
                    asset        maximum_supply )
{
    require_auth( _self );

    auto sym = maximum_supply.symbol;
    eosio_assert( sym.is_valid(), "invalid symbol name" );
    eosio_assert( maximum_supply.is_valid(), "invalid supply");
    eosio_assert( maximum_supply.amount > 0, "max-supply must be positive");

    stats statstable( _self, sym.name() );
    auto existing = statstable.find( sym.name() );
    eosio_assert( existing == statstable.end(), "token with symbol already exists" );

    statstable.emplace( _self, [&]( auto& s ) {
       s.supply.symbol = maximum_supply.symbol;
       s.max_supply    = maximum_supply;
       s.issuer        = issuer;
    });
}


void dividend::issue( account_name to, asset quantity, string memo )
{
    auto sym = quantity.symbol;
    eosio_assert( sym.is_valid(), "invalid symbol name" );
    eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );

    auto sym_name = sym.name();
    stats statstable( _self, sym_name );
    auto existing = statstable.find( sym_name );
    eosio_assert( existing != statstable.end(), "token with symbol does not exist, create token before issue" );
    const auto& st = *existing;

    require_auth( st.issuer );
    eosio_assert( quantity.is_valid(), "invalid quantity" );
    eosio_assert( quantity.amount > 0, "must issue positive quantity" );

    eosio_assert( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio_assert( quantity.amount <= st.max_supply.amount - st.supply.amount, "quantity exceeds available supply");

    statstable.modify( st, 0, [&]( auto& s ) {
       s.supply += quantity;
    });

    add_balance( st.issuer, quantity, st.issuer );

    if( to != st.issuer ) {
       // SEND_INLINE_ACTION( *this, transfer, {st.issuer,N(active)}, {st.issuer, to, quantity, memo} );
       transfer(st.issuer, to, quantity, memo);
    }
}

void dividend::transfer( account_name from,
                      account_name to,
                      asset        quantity,
                      string       memo )
{
    eosio_assert( from != to, "cannot transfer to self" );
    require_auth( from );
    eosio_assert( is_account( to ), "to account does not exist");
    auto sym = quantity.symbol.name();
    stats statstable( _self, sym );
    const auto& st = statstable.get( sym );

    require_recipient( from );
    require_recipient( to );

    eosio_assert( quantity.is_valid(), "invalid quantity" );
    eosio_assert( quantity.amount > 0, "must transfer positive quantity" );
    eosio_assert( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );


    sub_balance( from, quantity );
    add_balance( to, quantity, from );
}

void dividend::sub_balance( account_name owner, asset value ) {
   accounts from_acnts( _self, owner );

   const auto& from = from_acnts.get( value.symbol.name(), "no balance object found" );
   eosio_assert( from.balance.amount >= value.amount, "overdrawn balance" );


   if( from.balance.amount == value.amount ) {
      from_acnts.erase( from );
   } else {
      from_acnts.modify( from, owner, [&]( auto& a ) {
          a.balance -= value;
      });
   }
}

void dividend::add_balance( account_name owner, asset value, account_name ram_payer )
{
   accounts to_acnts( _self, owner );
   auto to = to_acnts.find( value.symbol.name() );
   if( to == to_acnts.end() ) {
      to_acnts.emplace( ram_payer, [&]( auto& a ){
        a.balance = value;
      });
   } else {
      to_acnts.modify( to, 0, [&]( auto& a ) {
        a.balance += value;
      });
   }
}

} /// namespace eosio

// EOSIO_ABI( eosio::dividend, (create)(issue)(transfer) )
=======
         dividend( name receiver, name code, datastream<const char*> ds ) :
            contract( receiver, code, ds ),
            _global( receiver, receiver.value ){}

         void make_profit(uint64_t delta, asset total_staked);
         void claim(name &from, asset quantity);

         TABLE st_d_global {
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
    auto raw_dividend = g.earnings_per_share * quantity.amount / MAGNITUDE;
    auto delta = asset( raw_dividend, EOS_SYMBOL);

    if ( delta.is_valid() && delta.amount > 0) {
        action(
            permission_level{_self, "active"_n},
            "eosio.token"_n, "transfer"_n,
            make_tuple(_self, from, delta,
                string("claim dividend."))
        ).send();

        g.last = from.value ;
        _global.set(g, get_self());
    }
   
}

} // namespace kyubeytool
>>>>>>> b186e1526be65009a0243be138c4bcbeb7cda0c5

#ifndef _CONFIG_HPP

#include <eosiolib/asset.hpp>
#include "utils.hpp"

namespace config {

// basic
const auto EOS_SYMBOL = eosio::symbol("EOS", 4);
const auto EOS_CONTRACT = "eosio.token"_n;

constexpr auto CCC_MAX_SUPPLY = 300000000000;

const auto CCC_SYMBOL = eosio::symbol("CCC", 4);
// const auto CCC_CONTRACT = get_self();

const auto TOKEN_SYMBOL = CCC_SYMBOL ;
// const auto TOKEN_CONTRACT =

const auto DIVIDEND_EX_SYMBOL = eosio::extended_symbol( EOS_SYMBOL, EOS_CONTRACT ) ;

const auto DEF_SPONSOR = "rukamoemoe51"_n;

constexpr double_t TRADE_FEE = 0.0175 ; // 1.75%
constexpr double_t TRADE_COEF = 1 - TRADE_FEE ;

constexpr int64_t MINING_COEF = 10 ;

constexpr uint64_t PRICE_SCALE = 100000000;

constexpr uint32_t MINING_TIMES = 16 ;

constexpr double_t DIVIDEND_COEF{0.65} ;    // 分红调成65%
constexpr double_t BUYBACK_COEF{0.2} ;      // 回购调成20%
constexpr double_t COLLECTION_COEF{0.15} ;  // 集齐整版纪念币奖励调成15%

constexpr uint32_t FROZEN_DAYS = 30 ;

} // namespace config

#endif
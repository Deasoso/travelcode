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

constexpr uint32_t MINING_TIMES = 16 ;

} // namespace config

#endif
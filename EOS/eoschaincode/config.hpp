#ifndef _CONFIG_HPP

#include <eosiolib/asset.hpp>
#include "utils.hpp"

namespace config {

// basic
const auto EOS_SYMBOL = eosio::symbol("EOS", 4);
const auto EOS_CONTRACT = "eosio.token"_n;

constexpr uint32_t MINING_TIMES = 16 ;

} // namespace config

#endif
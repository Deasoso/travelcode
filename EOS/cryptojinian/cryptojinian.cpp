#include <eosiolib/crypto.h>
#include "cryptojinian.hpp"

#include <cstdio>

 // @abi action
void cryptojinian::setcoin(const account_name owner, const uint64_t type, const uint64_t value, const uint64_t number) {
    //require_auth( msgsender );
    // auto player = players.find(owner);
    // if(player == players.end()){
    //     coins.emplace(_self, [&](auto &coin) {
    //         coin.id = offers.available_primary_key();
    //         coin.owner = owner;
    //     });
    // } 
    //
    // std::vector<account_name> accounts;
    // for(int i=0;i<players.size();i++){
    //     string k = players[i];
    //     accounts.push_back(eosio::string_to_name(k.c_str()));
    // }

    _coins.emplace(_self, [&](auto &coin) {
        coin.id = offers.available_primary_key();
        coin.owner = owner;
        coin.type = type;
        coin.value = value;
        coin.number = number;
    });
    
}

void cryptojinian::init(){
    require_auth(from);
    auto g = global.find(0);
    if (g == global.end()) {
        std::map<uint64_t, uint64_t> coins;
        std::map<uint64_t, uint64_t> usedspilt64;
        uint64_t remainamount = 429600;
        std::map<uint64_t, uint64_t> coins;
        global.emplace(_self, [&](auto &g) {
            g.id = 0;
            g.hash = hash;
            g.coins = coins;
            g.usedspilt64 = usedspilt64;
            g.usedspilt6400 = usedspilt6400;
            g.remainamount = remainamount;
        });
    } else {
        global.modify(g, 0, [&](auto &g) {
            g.hash = hash;
        });
    }
}

void cryptojinian::findcoinpos(const uint64_t inputrandom){
    // inputrandom: 1 ~ remain coins
    // return 1 ~ all coins
    uint64_t addamount = 0;
    uint64_t pos = 0;
    uint64_t posspilt64 = 0;
    auto g = global.find(0);
    eosio_assert(g != global.end(), "Not Inited (No Global)");
    uint64_t s6400;
    uint64_t s64;
    uint64_t s;
    uint64_t s_finder = 1ULL<<63;
    for(int i1 = 0;i1 < 100; i1++){ // for usedspilt6400, max640000 > 429600

        if(g->usedspilt6400.count(i1))>0){// no empty.
            s6400 = g->usedspilt6400[i1];
        }else{
            s6400 = 0;
        }

        if(addamount + (6400 - s6400) > inputrandom){ // no >=
            for(int i2 = 0;i2 < 100; i2++){// for usedspilt64;

                if(g->usedspilt64.count(i2))>0){ // no empty.
                    s64 = g->usedspilt64[i2];
                }else{
                    s64 = 0;
                }

                if(addamount + (64 - s64) > inputrandom){ // no >=
                    if(g->coins.count(posspilt64))>0){ // no empty (only once)
                        s = g->coins[posspilt64];
                    }else{
                        s = 0;
                    }
                    for(int i3 = 0;i3 < 64; i3++){// for usedspilt64;
                        if(s | s_finder == s){ // is 1
                            pos += 1;
                        }else{
                            addamount += 1;
                            pos += 1;
                        }
                        if(addamount == inputrandom){//found!
                            global.emplace(_self, [&](auto &g) {
                                g.coins[i3] = s | s_finder;
                                g.usedspilt64[i2] = s64 + 1;
                                g.usedspilt6400[i1] = s6400 + 1;
                                g.remainamount = g.remainamount + 1;
                            });
                            return pos;
                            break;
                        }
                    }
                    break; // for 64
                }else{
                    addamount += (64 - s64);
                    pos += 64;
                    posspilt64 += 1;
                }
            }
            break; // for 6400
        }else{
            addamount += (6400 - s6400);
            pos += 6400;
            posspilt64 += 100;
        }
    }
}

void cryptojinian::newcoinbypos(const account_name owner, const uint64_t pos){
    // pos: 1~640000
    const uint64_t type_array[22] = {2100,10000,8400,19000,50000,14000,27000,10000,30000,10000,1620,10000,28000,10000,20000,27000,21000,37400,31100,23180,20000,19800};
    uint64_t pos_number = pos;
    uint64_t pos_count = 0;
    uint64_t array_count = 0;
    uint64_t type = 0;
    uint64_t number = 0;
    for(int i = 0; i < 22; i++){
        pos_count += type_array[i];
        array_count += 1;
        pos_number -= type_array[i];
        if (pos <= pos_count){
            type = array_count;
            number = pos_number;
            break;
        }
    }
    _coins.emplace(_self, [&](auto &coin) {
        coin.id = offers.available_primary_key();
        coin.owner = owner;
        coin.type = type;
        coin.value = 1;
        coin.number = number;
    });
}
// input
void cryptojinian::onTransfer(account_name from, account_name to, asset quantity, std::string memo) {        
    
    if (to != _self) return;
    
    require_auth(from);
    eosio_assert(quantity.is_valid(), "invalid token transfer");
    eosio_assert(quantity.amount > 0, "must transfer a positive amount");
    
    auto a = asset(quantity.symbol, quantity.amount / 2);
    auto b = asset(quantity.symbol, quantity.amount - quantity.amount / 2);

    if (a.amount > 0) {
        action(
            permission_level{_self, N(active)},
            quantity.contract, N(transfer),
            make_tuple(_self, N(minakokojima), a,
            std::string(""))
        ).send();
    }
    if (b.amount > 0) {
        action(
            permission_level{_self, N(active)},
            quantity.contract, N(transfer),
            make_tuple(_self, N(rukamoemoe51), b,
            std::string(""))
        ).send();
    }
}
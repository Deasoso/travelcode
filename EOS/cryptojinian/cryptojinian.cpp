#include <eosiolib/crypto.h>
#include "cryptojinian.hpp"

 // @abi action
void cryptojinian::setcoin(const account_name owner, const uint64_t type, const uint64_t number) {
    //two-way binding.
    uint64_t newcoinid = _coins.available_primary_key();
    std::vector<uint64_t> newcoinlist;
    auto player = _players.find(owner);
    if(player == _players.end()){
        newcoinlist.push_back(newcoinid);
        _players.emplace(_self, [&](auto &player) {
            player.name = owner;
            player.coins = newcoinlist;
        });
    } else {
        newcoinlist = player->coins;
        newcoinlist.push_back(newcoinid);
        _players.modify(player, 0, [&](auto &player) {
            player.coins = newcoinlist;
        });
    }
    _coins.emplace(_self, [&](auto &coin) {
        coin.id = newcoinid;
        coin.owner = owner;
        coin.type = type;
        coin.number = number;
    });
}

uint64_t cryptojinian::addcoincount(const uint64_t type){
    auto usedcoins = _usedcoins.find(type << 48);
    uint64_t globalcoincount = 0;
    eosio_assert(usedcoins != _usedcoins.end(), "Not Inited (No _global)");
    globalcoincount = usedcoins->value;
    globalcoincount += 1;
    _usedcoins.modify(usedcoins, 0, [&](auto &usedcoins) {
        usedcoins.value = globalcoincount;
    });
    return globalcoincount;
}

void cryptojinian::init(){
    require_auth(_self);
    auto g = _global.get();
    uint64_t remainamount = 429600;
    if (g == _global.end()) {
        _global.emplace(_self, [&](auto &g) {
            g.id = 0;
            g.remainamount = remainamount;
        });
    } else {
        _global.modify(g, 0, [&](auto &g) {
            g.id = 0;
            g.remainamount = remainamount;
        });
    }
}

uint64_t cryptojinian::findcoinpos(const uint64_t inputrandom){
    // inputrandom: 1 ~ remain coins
    // return 1 ~ all coins
    uint64_t addamount = 0;
    uint64_t pos = 0;
    uint64_t posspilt64 = 0;
    auto g = _global.find(0);
    eosio_assert(g != _global.end(), "Not Inited (No _global)");
    uint64_t s6400;
    uint64_t s64;
    uint64_t s;
    auto coinints = _usedcoins.find(0);
    auto usedspilt64 = _usedcoins.find(0);
    auto usedspilt6400 = _usedcoins.find(0);
    uint64_t s_finder = 1ULL<<63;
    for(int i1 = 0;i1 < 100; i1++){ // for usedspilt6400, max640000 > 429600
        usedspilt6400 = _usedcoins.find(i1 << 32);
        if (usedspilt6400 == _usedcoins.end()) {
            s6400 = 0;
        } else {
            s6400 = usedspilt6400->value;
        }
        if(addamount + (6400 - s6400) > inputrandom){ // no >=
            for(int i2 = 0;i2 < 100; i2++){// for usedspilt64;
                usedspilt64 = _usedcoins.find(i2 << 16);
                if (usedspilt64 == _usedcoins.end()) {
                    s64 = 0;
                } else {
                    s64 = usedspilt64->value;
                }

                if(addamount + (64 - s64) > inputrandom){ // no >= , is >
                    coinints = _usedcoins.find(posspilt64);
                    if (usedspilt64 == _usedcoins.end()) {
                        s = 0;
                    } else {
                        s = coinints->value;
                    }

                    for(int i3 = 0;i3 < 64; i3++){// for usedspilt64;
                        if((s | s_finder) == s){ // is 1
                            pos += 1;
                        }else{
                            addamount += 1;
                            pos += 1;
                        }
                        if(addamount == inputrandom){//found!
                            _global.modify(g, 0, [&](auto &g) {
                                g.remainamount = g.remainamount - 1;
                            });

                            if (coinints == _usedcoins.end()) {
                                _usedcoins.emplace(_self, [&](auto &coinints) {
                                    coinints.key = i3;
                                    coinints.value = s | s_finder;
                                });
                            } else {
                                _usedcoins.modify(coinints, 0, [&](auto &coinints) {
                                    coinints.value = s | s_finder;
                                });
                            }

                            if (usedspilt64 == _usedcoins.end()) {
                                _usedcoins.emplace(_self, [&](auto &usedspilt64) {
                                    usedspilt64.key = i2 << 16;
                                    usedspilt64.value = s64 + 1;
                                });
                            } else {
                                _usedcoins.modify(usedspilt64, 0, [&](auto &usedspilt64) {
                                    usedspilt64.value = s64 + 1;
                                });
                            }

                            if (usedspilt6400 == _usedcoins.end()) {
                                _usedcoins.emplace(_self, [&](auto &usedspilt6400) {
                                    usedspilt6400.key = i1 << 32;
                                    usedspilt6400.value = s6400 + 1;
                                });
                            } else {
                                _usedcoins.modify(usedspilt6400, 0, [&](auto &usedspilt6400) {
                                    usedspilt6400.value = s6400 + 1;
                                });
                            }
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
    setcoin(owner,type,number);
    addcoincount(type);
}

void cryptojinian::exchange(const vector<uint64_t> inputs){
    // input ids.
    uint64_t coincount = inputs.size();
    uint64_t type = 0;
    account_name coinowner;
    auto onecoin = _coins.find(0);
    for(int i=0;i<inputs.size();i++){
        onecoin = _coins.find(inputs[i]);
        require_auth(onecoin->owner);
        if (type == 0) {
            type = onecoin->type;
            coinowner = onecoin->owner;
        } else {
            eosio_assert(type == onecoin->type, "Not Equal Type");  
        }
    }
    vector<vector<uint64_t>> coinvalues = {
        {1,1,2,5,10},   //btc
        {1,1,2,5,10},   //eth
        {1,1,2,5,10},   //lt
        {1,1,5,10,50,100},   //ba
        {1,1,5,10,20,50},   //ri
        {1,1,2,5,10},   //og
        {1,1,2,5,10,20},   //ae
        {1,1,2,5,10},   //as
        {1,1,2,5,10,20,50,100},   //ud
        {1,1,2,5,10},   //pt
        {1,1,2,5,10},   //mo
        {1,1,2,5,10},   //qt
        {5,5,10,20,50,100},   //bt
        {5,5,10,20,50},   //ht
        {5,5,10,20,50,100},   //eos
        {10,10,20,50,100},   //io
        {10,10,20,50,100},   //zb
        {50,50,100,200,500,1000},   //xlma
        {100,100,200,500,1000},   //ada
        {500,500,1000,2000,5000},   //dg
        {500,500,1000,2000,5000},   //rp
        {500,500,1000,2000,5000}    //tr
    };
    uint64_t inputtype = type % 100;
    uint64_t inputvalue = type / 100;
    uint64_t coinvalue = coinvalues[inputtype][inputvalue];
    uint64_t newcointype = 0;
    for(int i1=0;i1<coinvalues[inputtype].size();i1++){
        if ((coincount * coinvalue == coinvalues[inputtype][i1]) && (i1 > inputvalue)){
            for(int i2=0;i2<inputs.size();i2++){
                onecoin = _coins.find(inputs[i2]);
                _coins.modify(onecoin, 0, [&](auto &onecoin) {
                    onecoin.owner = _self;
                });
            }
            newcointype = (i1 * 100) + inputtype;
            uint64_t globalcoincount = addcoincount(newcointype);
            setcoin(coinowner,newcointype,globalcoincount);
        }
    }
}


// input
void cryptojinian::onTransfer(account_name from, account_name to, asset quantity, std::string memo) {        
    
    if (to != _self) return;   
    require_auth(from);
    eosio_assert(quantity.is_valid(), "invalid token transfer");
    eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed");
    eosio_assert(quantity.amount > 0, "must transfer a positive amount");


    // take_order( from,  ) ;
    /*    
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

    */
}
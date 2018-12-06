#include "cryptojinian.hpp"

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
    uint64_t globalcoincount;
    if(usedcoins == _usedcoins.end()){
        globalcoincount = 0;
    }else{
        globalcoincount = usedcoins->value;
    }
    globalcoincount += 1;
    if (usedcoins == _usedcoins.end()) {
        _usedcoins.emplace(_self, [&](auto &usedcoins) {
            usedcoins.key = type << 48;
            usedcoins.value = globalcoincount;
        });
    } else {
        _usedcoins.modify(usedcoins, 0, [&](auto &usedcoins) {
            usedcoins.value = globalcoincount;
        });
    }
    return globalcoincount;
}

uint64_t cryptojinian::findcoinpos(const uint64_t input){
    // inputrandom: 1 ~ remain coins
    // return 1 ~ all coins
    uint64_t addamount = 0;
    uint64_t pos = 0;
    uint64_t posspilt64 = 0;
    auto g = _global.get();
    uint64_t s6400;
    uint64_t s64;
    uint64_t s;
    auto coinints = _usedcoins.find(0);
    auto usedspilt64 = _usedcoins.find(0);
    auto usedspilt6400 = _usedcoins.find(0);
    uint64_t s_finder = 1ULL<<63;
    const uint64_t inputrandom = (input % g.remainamount) + 1;
    for(int i1 = 0;i1 < 100; i1++){ // for usedspilt6400, max640000 > 429600
        usedspilt6400 = _usedcoins.find(i1 << 32);

        s6400 = ( usedspilt6400 == _usedcoins.end() ) ? 0 : usedspilt6400->value;
        /*
        if (usedspilt6400 == _usedcoins.end()) {
            s6400 = 0;
        } else {
            s6400 = usedspilt6400->value;
        } */
        if(addamount + (6400 - s6400) > inputrandom){ // no >=
            for(int i2 = 0;i2 < 100; i2++){// for usedspilt64;
                usedspilt64 = _usedcoins.find(i2 << 16);

                s64 = (usedspilt64 == _usedcoins.end()) ? 0 : usedspilt64->value;
                /*
                if (usedspilt64 == _usedcoins.end()) {
                    s64 = 0;
                } else {
                    s64 = usedspilt64->value;
                }*/

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
                            g = _global.get() ;
                            g.remainamount -= 1;
                            _global.set( g, _self) ;

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
                        }else{
                            s_finder = s_finder >> 1;
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
    eosio_assert(false, "Not Found Coin Pos");  
}

void cryptojinian::newcoinbypos(const account_name owner, const uint64_t pos){
    // pos: 1~640000
    eosio_assert(pos <= 640000, "Pos Too Large.");  
    const uint64_t type_array[22] = {2100,10000,8400,19000,50000,14000,27000,10000,30000,10000,1620,10000,28000,10000,20000,27000,21000,37400,31100,23180,20000,19800};
    uint64_t pos_number = pos;
    uint64_t pos_count = 0;
    uint64_t array_count = 0;
    uint64_t type = 0;
    uint64_t number = 0;
    for(int i = 0; i < 22; i++){
        pos_count += type_array[i];
        array_count += 1;
        if (pos <= pos_count){
            type = array_count;
            number = pos_number;
            break;
        }
        pos_number -= type_array[i];
    }
    setcoin(owner,type,number);
    addcoincount(type);
}

void cryptojinian::exchange(const std::string inputstrs){
    // input ids.
    std::vector<uint64_t> inputs;
    SplitString(inputstrs, inputs, ",");
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

void cryptojinian::join_miningqueue(const account_name &miner, const asset &totalcost)
{
    // cost check
    const auto mc = _global.get().miningcost();
    const uint64_t totalamount = (uint64_t)totalcost.amount;
    const uint64_t mcamount = (uint64_t)mc.amount;
    const uint64_t times = totalamount / mcamount;
    eosio_assert(times <= 10, "You have mining too much times.");

    join_game_processing(miner);

    // join mining waiting Q
    for (uint8_t n = 0; n < times; n++)
    {
        _miningqueue.emplace(_self, [&](auto &q) {
            q.id = _miningqueue.available_primary_key();
            q.miner = miner;
        });
    }
}

void cryptojinian::ref_processing( const account_name &miner, const account_name &sponsor )
{   
    auto itr_sponsor = join_game_processing( sponsor ) ;
    auto itr_miner = _players.find(miner);
    
    if (itr_miner->sponsor != DEF_SPONSOR)
        return;
    else if (std::find(itr_sponsor->refs.begin(), itr_sponsor->refs.end(), miner) == itr_sponsor->refs.end())
    {
        _players.modify(itr_sponsor, _self, [&](auto &s) {
            s.refs.push_back(miner);
        });
        // 發 bouns token 給 sponsor
        const auto refs_size = itr_sponsor->refs.size();
        uint64_t bouns = 0;
        if (refs_size <= 10)
            bouns = 30;
        else if (refs_size <= 30)
            bouns = 40;
        else if (refs_size <= 70)
            bouns = 50;
        else if (refs_size <= 100)
            bouns = 60;
        else
            bouns = 80;

        token_mining( itr_sponsor->name, asset( bouns * 10000, CCC_SYMBOL ),
                      "bouns " + std::to_string(bouns) + " CCC" );
            
        _players.modify(itr_miner, _self, [&](auto &m) {
            m.sponsor = sponsor;
        });
    } // else if
} // ref_processing()

void cryptojinian::take_order(const uint64_t &order_id, const asset &eos, const account_name &buyer)
{
    require_auth(buyer);

    auto itr = _orders.find(order_id);
    eosio_assert(itr != _orders.end(), "Trade id is not found");
    eosio_assert(itr->bid == eos, "Asset does not match");

    // 一個轉移 coin 的 move
    for (auto &cid : itr->the_coins_for_sell)
    {
        _coins.modify(_coins.find(cid), _self, [&](auto &c) {
            c.owner = buyer;
        });
    }

    // 打 log
    const rec_takeOrder _tor{
        .matched_order = *itr,
        .buyer = buyer,
    };

    action(permission_level{_self, N(active)},
           _self, N(receipt), _tor)
        .send();

    // 刪了
    _orders.erase(itr);

} // take_order()

void cryptojinian::SplitString(const std::string& s, vector<uint64_t>& v, const std::string& c)
{
    std::string::size_type pos1, pos2;
    pos2 = s.find(c);
    pos1 = 0;
    while(std::string::npos != pos2)
    {
        // strtoull(pszValue, NULL, 0)
        v.push_back(std::strtoull(s.substr(pos1, pos2-pos1).c_str(), NULL, 0));
         
        pos1 = pos2 + c.size();
        pos2 = s.find(c, pos1);
    }
    if(pos1 != s.length())
        v.push_back(std::strtoull(s.substr(pos1, pos2-pos1).c_str(), NULL, 0));
}

// input
void cryptojinian::onTransfer(account_name from, account_name to, asset quantity, std::string memo) {            
    if (from == _self || to != _self) return;   
    require_auth(from);
    eosio_assert(quantity.is_valid(), "invalid token transfer");
    eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed");
    eosio_assert(quantity.amount > 0, "must transfer a positive amount"); // 正數的結界

    auto params = explode(memo, ' ');
    eosio_assert(params.size() <= 5, "Error memo");

    if (params[0] == "sponsor") {
    //  auto g = _global.get();     
    //  eosio_assert(now() >= g.st, "This round will be start at 11/04/2018 @ 12:00pm (UTC).");
        return;
    }

    if (params[0] == "mining") {
        join_miningqueue(from, quantity);
        if ( params.size() < 3 )
            ref_processing( from ) ;
        else {
            eosio_assert(params.size() == 3 && params[1] == "ref", "Error memo");

            auto sponsor = string_to_name( params[2].c_str() ) ;
            eosio_assert( is_account(sponsor), "Sponsor is not an existing account."); // sponsor 存在 check
            ref_processing( from, sponsor );
        }
        
        return;
    }

    if (params[0] == "take_order") {
        eosio_assert(params.size() == 2, "Error memo");

        take_order( string_to_int(params[1]), quantity, from );
        return;
    }
}
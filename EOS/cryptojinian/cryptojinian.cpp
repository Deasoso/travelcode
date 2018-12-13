#include "cryptojinian.hpp"

void cryptojinian::setcoin(const name owner, const uint64_t type, const uint64_t number) {
    //two-way binding.
    uint64_t newcoinid = _coins.available_primary_key();
    auto itr_players = join_game_processing( owner );
    _players.modify(itr_players, get_self(), [&](auto &p) {
            p.coins.push_back(newcoinid);
    });
    
    _coins.emplace(get_self(), [&](auto &coin) {
        coin.id = newcoinid;
        coin.owner = owner.value;
        coin.type = type;
        coin.number = number;
    });
}

uint64_t cryptojinian::addcoincount(const uint64_t type){
    auto usedcoins = _usedcoins.find(type << 48);
    uint64_t globalcoincount = ( usedcoins == _usedcoins.end() ) ? 0 : usedcoins->value ;
    globalcoincount ++;
    if (usedcoins == _usedcoins.end()) {
        _usedcoins.emplace(get_self(), [&](auto &u) {
            u.key = type << 48;
            u.value = globalcoincount;
        });
    } else {
        _usedcoins.modify(usedcoins, get_self(), [&](auto &u) {
            u.value = globalcoincount;
        });
    }
    return globalcoincount;
}

uint64_t cryptojinian::findcoinpos(uint64_t input){
    // inputrandom: 1 ~ remain coins
    // return 1 ~ all coins
    uint64_t addamount = 0;
    uint64_t pos = 0;
    uint64_t posspilt64 = 0;
    auto g = _global.get();
    uint64_t s, s64, s6400;
    auto coinints = _usedcoins.begin();
    auto usedspilt64 = _usedcoins.begin();
    auto usedspilt6400 = _usedcoins.begin();
    uint64_t s_finder = 1ULL<<63;
    input = (input % g.remainamount) + 1;
    for(int i1 = 0;i1 < 100; i1++){ // for usedspilt6400, max640000 > 429600
        usedspilt6400 = _usedcoins.find(i1 << 32);
        s6400 = ( usedspilt6400 == _usedcoins.end() ) ? 0 : usedspilt6400->value;
        if(addamount + (6400 - s6400) > input){ // no >=
            for(int i2 = 0;i2 < 100; i2++){// for usedspilt64;
                usedspilt64 = _usedcoins.find(i2 << 16);

                s64 = (usedspilt64 == _usedcoins.end()) ? 0 : usedspilt64->value;

                if(addamount + (64 - s64) > input){ // no >= , is >
                    coinints = _usedcoins.find(posspilt64);
                    if (usedspilt64 == _usedcoins.end()) {
                        s = 0;
                    } else {
                        s = coinints->value;
                    }

                    for(int i3 = 0;i3 < 64; i3++){// for usedspilt64;
                        pos ++;
                        if((s | s_finder) != s) // is 1
                            addamount += 1;
                
                        if(addamount == input){//found!
                            g = _global.get() ;
                            g.remainamount -= 1;
                            _global.set( g, _self) ;

                            if (coinints == _usedcoins.end()) {
                                _usedcoins.emplace(get_self(), [&](auto &coinints) {
                                    coinints.key = i3;
                                    coinints.value = s | s_finder;
                                });
                            } else {
                                _usedcoins.modify(coinints, get_self(), [&](auto &coinints) {
                                    coinints.value = s | s_finder;
                                });
                            }

                            if (usedspilt64 == _usedcoins.end()) {
                                _usedcoins.emplace(get_self(), [&](auto &usedspilt64) {
                                    usedspilt64.key = i2 << 16;
                                    usedspilt64.value = s64 + 1;
                                });
                            } else {
                                _usedcoins.modify(usedspilt64, get_self(), [&](auto &usedspilt64) {
                                    usedspilt64.value = s64 + 1;
                                });
                            }

                            if (usedspilt6400 == _usedcoins.end()) {
                                _usedcoins.emplace(get_self(), [&](auto &usedspilt6400) {
                                    usedspilt6400.key = i1 << 32;
                                    usedspilt6400.value = s6400 + 1;
                                });
                            } else {
                                _usedcoins.modify(usedspilt6400, get_self(), [&](auto &usedspilt6400) {
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

void cryptojinian::newcoinbypos(const name owner, const uint64_t pos){
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
        array_count ++;
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
    name coinowner;
    auto onecoin = _coins.find(0);
    for(int i=0;i<inputs.size();i++){
        onecoin = _coins.find(inputs[i]);
        require_auth(name(onecoin->owner));
        if (type == 0) {
            type = onecoin->type;
            coinowner = name(onecoin->owner);
        } else {
            eosio_assert(type == onecoin->type, "Not Equal Type");  
        }
    }
    vector<vector<uint64_t>> coinvalues = { // [][+1]
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
                _coins.modify(onecoin, get_self(), [&](auto &onecoin) {
                    onecoin.owner = get_self().value;
                });
            }
            newcointype = (i1 * 100) + inputtype;
            uint64_t globalcoincount = addcoincount(newcointype);
            setcoin(coinowner,newcointype,globalcoincount);
        }
    }
}

void cryptojinian::join_miningqueue(const name &miner, const asset &totalcost)
{
    // cost check
    const auto &mc = _global.get().miningcost();
    const int64_t times = totalcost / mc; 
    eosio_assert(times > 0, "You have wrong cost." );
    eosio_assert(times <= 10, "You have mining too much times.");
    // eosio_assert(false, int_to_string( times ).c_str() );

    join_game_processing(miner);

    // join mining waiting Q
    miningqueue_t _miningqueue(get_self(), get_self().value);
    for (uint8_t n = 0; n < times; n++) {
        _miningqueue.emplace( get_self(), [&](auto &q) {
            q.id = _miningqueue.available_primary_key();
            q.miner = miner.value;
        });
    }
}

void cryptojinian::ref_processing( const name &miner, const name &sponsor )
{   
    auto itr_sponsor = join_game_processing( sponsor ) ;
    auto itr_miner = _players.find(miner.value);
    
    if (name(itr_miner->sponsor) != DEF_SPONSOR)
        return;
    else if (std::find(itr_sponsor->refs.begin(), itr_sponsor->refs.end(), miner.value) == itr_sponsor->refs.end())
    {
        _players.modify(itr_sponsor, get_self(), [&](auto &s) {
            s.refs.push_back(miner.value);
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

        token_mining( name(itr_sponsor->playername), asset( bouns * 10000, CCC_SYMBOL ),
                      "bouns " + std::to_string(bouns) + " CCC" );
            
        _players.modify(itr_miner, get_self(), [&](auto &m) {
            m.sponsor = sponsor.value;
        });
    } // else if
} // ref_processing()

void cryptojinian::takeorder(const name &buyer, const uint64_t &order_id, const asset &eos )
{
    require_auth(buyer);
    
    order_t _orders( get_self(), get_self().value );
    auto itr = _orders.get(order_id, "Trade id is not found" );
    eosio_assert(itr.bid == eos, "Asset does not match");

    // 一個轉移 coin 的 move
    for (auto &cid : itr.the_coins_for_sell)
    {
        _coins.modify(_coins.find(cid), get_self(), [&](auto &c) {
            c.owner = buyer.value;
        });
    }

    // 打 log
    const st_rec_takeOrder _tor{
        .matched_order = itr,
        .buyer = buyer,
    };

    action(permission_level{_self, "active"_n},
           _self, "receipt"_n, _tor )
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
void cryptojinian::onTransfer(name from, name to, asset quantity, std::string memo) {            
    if (from == get_self() || to != get_self()) return;   
    require_auth(from);
    eosio_assert(quantity.is_valid(), "invalid token transfer");
    eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed");
    eosio_assert(quantity.amount > 0, "must transfer a positive amount"); // 正數的結界

    auto params = explode(memo, ' ');
    eosio_assert(params.size() <= 5, "Error memo");

    if (params[0] == "mining") {
        join_miningqueue(from, quantity);
        if ( params.size() < 3 )
            ref_processing( from ) ;
        else {
            eosio_assert(params.size() == 3 && params[1] == "ref", "Error memo");

            name sponsor( params[2].c_str() ) ;
            eosio_assert( is_account(sponsor), "Sponsor is not an existing account."); // sponsor 存在 check
            ref_processing( from, sponsor );
        }
        
        _contract_dividend.make_profit( quantity.amount, _contract_kyubey.get_supply( TOKEN_SYMBOL ) );
        return;
    }

    if (params[0] == "take_order") {
        eosio_assert(params.size() == 2, "Error memo");
        uint64_t order_id = string_to_int(params[1]) ;
        require_auth(from);
        SEND_INLINE_ACTION( *this, takeorder, { from, "active"_n }, { from, order_id, quantity } );
        return;
    }
}
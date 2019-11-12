#include "eoschaincode.hpp"
#include "sceneryfunc.cpp"

//  两个引号:新加方法  类名::方法名    可以放到别的文件
//  一般在类里会写上接口
//  内部调用，发卡函数，只有写入abi的函数可以在外部调用，此函数不写入，无法调用
//  一个人获得一张卡               获得者             卡种类(等级)             编码
void eoschaincode::setcoin(const name &owner, const uint64_t &type, const uint64_t &code) {
    require_auth(_self);    //创建者调用

    // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
    auto itr_newcoin = _coins.emplace(get_self(), [&](auto &c) {
        c.id = _coins.available_primary_key(); // 内部方法，id自增
        c.owner = owner.value; // 设定各个属性
        c.type = type;
        c.code = code;
    });
}

// eth(以太坊) input -> {name, value} function(){input.value} 具体可参考solidity语言
// eos链 eosio.token 保存eos币 ，监听转账方法执行 执行哪个函数? 从memo注释里得知
//                   转账方法     转账人   接收人      数量             注释
void eoschaincode::onTransfer(name from, name to, asset quantity, std::string memo) {// 
    if (from == _self || to != _self) return;    // 接收人必须是自身，转账人必须不是自身
    require_auth(from); // 调用这个方法的必须是转账人
    // quantity "10.0000 EOS"  必须是这个格式
    eosio_assert(quantity.is_valid(), "invalid token transfer"); // 资金必须是一个有效的
    eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed"); // 传入的必须是eos
    eosio_assert(quantity.amount > 1, "Must transfer a positive amount"); // 正數的結界

    // memo格式: "mining 3" ,mining 
    // 解析memo
    auto params = explode(memo, ' ');  
    eosio_assert(params.size() <= 5, "Error memo"); //断言

    if (params[0] == "mining") { // mining
        eosio_assert(params.size() == 2, "Error memo");
        uint64_t type = string_to_int(params[1]) ;
        join_miningqueue(from, type); // 加入挖矿队列
        return;
    }

    // 以上一段
}

// 用于编译&监听，不用特别在意
void eoschaincode::apply(uint64_t receiver, uint64_t code, uint64_t action) {
    auto &thiscontract = *this;
    if ( code == ( "eosio.token"_n ).value && action == ( "transfer"_n ).value ) {
        // eosio.token 里面会将所有参数打包为一个结构体
        auto transfer_data = unpack_action_data<st_transfer>(); // 解析结构体
        onTransfer(transfer_data.from, transfer_data.to, transfer_data.quantity, transfer_data.memo);
        return;
    }

    if (code != get_self().value) return;
    switch (action) {
        // 指定哪些函数写入abi
        EOSIO_DISPATCH_HELPER(eoschaincode,
                  (mining)
                  (test)
                  (adduser)
                  (deleteuser)
                  (addmerchant)
                  (delmerchant)
                  (addorder)
                  (deleteorder)
                  (addscenery)
                  (descenery)
        )
    }
}

// 加入挖矿队列 [矿工1，矿工2]..
void eoschaincode::join_miningqueue(const name &miner, const uint64_t &type)
{
    // 同上，挖矿队列增加一个struct
    miningqueue_t _miningqueue(get_self(), get_self().value);
    _miningqueue.emplace( _self, [&](auto &q) {
        q.id = _miningqueue.available_primary_key();
        q.type = type;
        q.miner = miner.value;
    });
}

// 分割随机数种子seed，分割为数组返回
vector<uint32_t> eoschaincode::merge_seed(const capi_checksum256 &s) {
    uint32_t hash ;
    // uint16_t s16[4] ;
    vector<uint32_t> v_hash ;
    for (uint32_t i = 0 ; i < 32 ; i += 4 ) {
        hash = ( s.hash[i] << 24 ) | ( s.hash[i+1] << 16 ) | ( s.hash[i+2] << 8 ) | s.hash[i+3] ;
        v_hash.push_back( hash ) ;
        hash = ( s.hash[i+3] << 24 ) | ( s.hash[i+2] << 16 ) | ( s.hash[i+1] << 8 ) | s.hash[i] ;
        v_hash.push_back( hash ) ;
        // hash = ( s16[0] << 48 ) | ( s16[1] << 32 ) | ( s16[2] << 16 )  | s16[3] ;
    }
    return v_hash;
}
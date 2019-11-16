#include "eoschaincode.hpp"
#include "sceneryfunc.cpp"
#include "merchantfunc.cpp"
#include "userfunc.cpp"
#include "orderfunc.cpp"

// eth(以太坊) input -> {name, value} function(){input.value} 具体可参考solidity语言
// eos链 eosio.token 保存eos币 ，监听转账方法执行 执行哪个函数? 从memo注释里得知
//                   转账方法     转账人   接收人      数量             注释
void eoschaincode::onTransfer(name from, name to, asset quantity, std::string memo) {// 
    if (from == _self || to != _self) return;    // 接收人必须是自身，转账人必须不是自身
    // require_auth(from); // 调用这个方法的必须是转账人
    // // quantity "10.0000 EOS"  必须是这个格式
    // eosio_assert(quantity.is_valid(), "invalid token transfer"); // 资金必须是一个有效的
    // eosio_assert(quantity.symbol == EOS_SYMBOL, "only EOS token is allowed"); // 传入的必须是eos
    // eosio_assert(quantity.amount > 1, "Must transfer a positive amount"); // 正數的結界

    // // memo格式: "mining 3" ,mining 
    // // 解析memo
    // auto params = explode(memo, ' ');  
    // eosio_assert(params.size() <= 5, "Error memo"); //断言

    // if (params[0] == "mining") { // mining
    //     eosio_assert(params.size() == 2, "Error memo");
    //     uint64_t type = string_to_int(params[1]) ;
    //     return;
    // }

    // 以上一段
}

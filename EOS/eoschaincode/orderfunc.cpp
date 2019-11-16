#include "eoschaincode.hpp"

// 创建订单
void eoschaincode::addorder(const name &buyer, const uint64_t receiver, const asset amount){
    require_auth(_self);    //创建者调用
    //增加一个新结构体                 加入者    加入函数，传入要加入的结构体
    auto itr_neworder = _orders.emplace(get_self(), [&](auto &c) {
        c.id = _orders.available_primary_key(); // 内部方法，id自增
        c.buyer = buyer.value; // 设定各个属性
        c.receiver = receiver;
        c.amount = amount;
    });
    addmoney(receiver , amount);
}
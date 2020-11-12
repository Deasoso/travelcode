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

//删除订单
void eoschaincode::delorder(const uint64_t id) { // 用来测试，不管，预留方法
  require_auth(_self);

  order_t order(_self, _self.value); //  获取结构体集合
  auto itr = order.find(id); // 传入key，获得结构体、

  eosio_assert(itr != order.end(), "no frozen order"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
  order.erase(itr) ; // 删掉这个结构体
}
#include "eoschaincode.hpp"
// add by chenchen
void eoschaincode:: addmerchant(const string name, const asset withdrawal,const asset amount){
    require_auth(_self);    //创建者调用
    // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
    auto itr_newmerchant = _merchants.emplace(get_self(), [&](auto &c) {
        c.id = _merchants.available_primary_key(); // 内部方法，id自增
        c.name = name; // 设定各个属性
        c.withdrawal = withdrawal;
        c.amount = amount;
    });
}
void eoschaincode:: delmerchant(const uint64_t id) { // 用来测试，不管，预留方法
    require_auth(_self);

    merchant_t merchant(_self, _self.value); //  获取结构体集合
    auto itr = merchant.find(id); // 传入key，获得结构体、

    eosio_assert(itr != merchant.end(), "no frozen merchant"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
    merchant.erase(itr) ; // 删掉这个结构体
}

void eoschaincode:: addmoney(const uint64_t id,const asset money){
    require_auth(_self);
    merchant_t merchant(_self,_self.value);
    auto itr = merchant.find(id);

    eosio_assert(itr != merchant.end(), "no this merchant!!!");

    merchant.modify(itr,get_self(),[&](auto &u){
        u.amount = u->amount + money;
    });

}
void eoschaincode:: delmoney(const uint64_t id,const asset money){
    require_auth(_self);
    merchant_t merchant(_self,_self.value);
    auto itr = merchant.find(id);

    eosio_assert(itr != merchant.end(), "no this merchant!!!");

    merchant.modify(itr,get_self(),[&](auto &u){
        u.amount = u->amount - money;
    });

}

        // usedcoins_t _usedcoins(_self, _self.value);
        // auto usedcoins = _usedcoins.find( type );
        // uint64_t globalcoincount = 0 ;
        // globalcoincount ++;
        // if (usedcoins == _usedcoins.end()) {
        //     _usedcoins.emplace(get_self(), [&](auto &u) {
        //         u.key = type;
        //         u.value = globalcoincount;
        //     });
        // } else {
            // _usedcoins.modify(usedcoins, get_self(), [&](auto &u) {
            //     u.value = globalcoincount += usedcoins->value ;
            // });
        // }
        // return globalcoincount;
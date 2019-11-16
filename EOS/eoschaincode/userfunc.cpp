#include "eoschaincode.hpp"

//新建用户
void eoschaincode::adduser(const name owner){
    require_auth(_self);    //创建者调用
    // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
    auto itr_newuser = _users.emplace(get_self(), [&](auto &c) {
        c.id = _users.available_primary_key(); // 内部方法，id自增
        c.owner = owner.value; // 设定各个属性
    });
}

//删除用户
void eoschaincode::deleteuser(const uint64_t id) { // 用来测试，不管，预留方法
    require_auth(_self);

    user_t user(_self, _self.value); //  获取结构体集合
    auto itr = user.find(id); // 传入key，获得结构体、

    eosio_assert(itr != user.end(), "no frozen user"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
    user.erase(itr) ; // 删掉这个结构体
}



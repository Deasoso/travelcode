#include "eoschaincode.hpp"

//创建景点
void eoschaincode::addscenery(const string scenery_name, const asset scenery_price, const string scenery_merchantName, const string scenery_info){
  require_auth(_self);    //创建者调用
  // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
  auto itr_newscenery = _sceneries.emplace(get_self(), [&](auto &c) {
    c.id = _sceneries.available_primary_key(); // 内部方法，id自增
    c.scenery_name = scenery_name; // 设定各个属性
    c.scenery_price = scenery_price;
    c.scenery_merchantName = scenery_merchantName;
    c.scenery_info = scenery_info;
  });
}

//删除景点
void eoschaincode::delscenery(const uint64_t id) { // 用来测试，不管，预留方法
  require_auth(_self);

  scenery_t scenery(_self, _self.value); //  获取结构体集合
  auto itr = scenery.find(id); // 传入key，获得结构体、

  eosio_assert(itr != scenery.end(), "no frozen scenery"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
  scenery.erase(itr) ; // 删掉这个结构体
}
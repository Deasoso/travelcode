#include "eoschaincode.hpp"

// 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
void eoschaincode::addscenery(const string &scenery_name, const asset scenery_price, const asset merall_income, const asset total_dividends, const string scenery_info){
  require_auth(_self);    //创建者调用
  auto itr_newscenery = _sceneries.emplace(get_self(), [&](auto &c) {
      c.id = _sceneries.available_primary_key(); // 内部方法，id自增
      c.scenery_name = scenery_name; // 设定各个属性
      c.scenery_price = scenery_price;
      c.merall_income = merall_income;
      c.total_dividends = total_dividends;
      c.scenery_info = scenery_info;
  });
}
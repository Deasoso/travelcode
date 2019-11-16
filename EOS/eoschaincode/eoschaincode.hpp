#pragma once
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/singleton.hpp>
#include <algorithm>

#include "utils.hpp"
// #include "token.hpp"
#include "config.hpp"
// 引入文件

using namespace eosio ; // eos主要类
using namespace config ;
// 工作空间

CONTRACT eoschaincode : public eosio::contract {   // 定义类名，不用太了解
    // aaa
    public: // 不用管，和private没区别 
        eoschaincode( name receiver, name code, datastream<const char*> ds ) :// 构造函数，不用管
        contract( receiver, code, ds ),// eosio构造函数，不用管
        _coins(receiver, receiver.value),
        _users(receiver, receiver.value),
        _merchants(receiver, receiver.value),
        _orders(receiver, receiver.value),// 定义struct结构体
        _sceneries(receiver, receiver.value){}//add by kuninup
        // eos保存数据的方式:多个struct
        // 根据合约名、结构体名、key三个得到struct内数据

        void apply(uint64_t receiver, uint64_t code, uint64_t action) ; // 部署合约时执行的方法，不用管

        // struct结构体，挖矿队列
        TABLE st_miningqueue {
            uint64_t id ; // 序列
            uint64_t type ; // 用户可定义的类型
            capi_name miner ; // 用户名

            auto primary_key() const { return id; } // 检索这个结构体需要的key
            EOSLIB_SERIALIZE(st_miningqueue, (id)(type)(miner)) // 生成abi(声明合约结构)
            // 合约编译时，生成一个二进制文件wasm，以及合约结构文件abi，可以直接去看
        };

        // 同上，注意coin就是卡
        TABLE coin {
            uint64_t id; // 序列
            capi_name owner; // 拥有者
            uint64_t type; // 用户定义的类型
            uint64_t code; // 随机数定义的类型

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(coin, (id)(owner)(type)(code))
        };

        // 用户
        TABLE user {
            uint64_t id; // 序列
            capi_name owner; // 拥有者
            asset amount; // 余额

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(user, (id)(owner)(amount))
        };
        
        //商家
        TABLE merchant {
            uint64_t id; // 序列
            string name; // 商家名字
            asset withdrawal;//已提现
            asset amount; // 总收入
            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(merchant, (id)(name)(withdrawal)(amount))
        };

        // 订单
        TABLE order {
            uint64_t id; // 序列
            capi_name buyer; // 购买方
            uint64_t receiver; //接收方
            asset amount; // 余额

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(order, (id)(buyer)(receiver)(amount))
        };
        // 景点 add by kuninup

        TABLE scenery {
            uint64_t id; // 序列
            string scenery_name; //景点名称
            asset scenery_price; //景点价格
            asset merall_income; // 商家总收入
            asset total_dividends; //分红总收入
            string scenery_info; //景点信息

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(scenery, (id)(scenery_name)(scenery_price)(merall_income)(total_dividends)(scenery_info))
        };

        // 挖矿，由后端(管理员)调用，传入随机数  (解决伪随机可能被预测)
        // 后端: 不停生成一个长随机字符串传入(不知道后端生成方法，无法预测) (10秒一次，且挖矿队列有人则传入)
        //    发卡函数             长随机字符串
        ACTION mining( const capi_checksum256 &seed ) {
            require_auth(_self); // 断言，必须是合约持有者执行这个方法 _self:合约创建者

            // 语法糖
            // 相当于arraylist 声明的名字   传入的参数(不用管)
            miningqueue_t _miningqueue(_self, _self.value);  // 获取结构体集合
            auto itr = _miningqueue.begin(); // 获得集合开始的结构体的指针，注意在之后用箭头获取属性
            if ( itr == _miningqueue.end() ) return ; // 如果结束则返回

            auto v_seed = merge_seed( seed ) ;  // 拆分随机字串
            uint32_t n = 0 ;
            name miner ; // 声明
            // [suiji1, suiji2, suiji3, ...]
            while( itr != _miningqueue.end() && n != v_seed.size() ) {
                miner = name(itr->miner) ; // name:内部方法，将字符串转化为用户类
                setcoin(miner, itr->type, v_seed[n]) ; // 生成卡并将持有者设为挖矿者，并传入type和随机数

                _miningqueue.erase(itr); // 将指针从队列里删除
                
                itr = _miningqueue.begin(); // 开始下次循环
                n++ ;
                if ( n > config::MINING_TIMES ) return ; // 超出时返回
            }
        }
        
        ACTION test() { // 用来测试，不管，预留方法
            require_auth(_self);
            const uint64_t id = 0;

            coin_t coin(_self, _self.value); //  获取结构体集合
            auto itr = coin.find(id); // 传入key，获得结构体、

            eosio_assert(itr != coin.end(), "no frozen coin"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
            coin.erase(itr) ; // 删掉这个结构体
        }

        // add by Deaso
        ACTION adduser(const name &owner, const asset amount){
            require_auth(_self);    //创建者调用

            // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
            auto itr_newuser = _users.emplace(get_self(), [&](auto &c) {
                c.id = _users.available_primary_key(); // 内部方法，id自增
                c.owner = owner.value; // 设定各个属性
                c.amount = amount;
            });
        }
        ACTION deleteuser(const uint64_t id) { // 用来测试，不管，预留方法
            require_auth(_self);

            user_t user(_self, _self.value); //  获取结构体集合
            auto itr = user.find(id); // 传入key，获得结构体、

            eosio_assert(itr != user.end(), "no frozen user"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
            user.erase(itr) ; // 删掉这个结构体
        }

        
        //add by cc
        //新建商家
        ACTION addmerchant(const string name, const asset withdrawal,const asset amount);
        //删除商家
        ACTION delmerchant(const uint64_t id);
        //减收入
        ACTION addmoney(uint64_t id,const asset money);
        //增收入
        ACTION delmoney(uint64_t id,const asset money);



        // add by llbthxf
        ACTION addorder(const name &buyer, const uint64_t receiver, const asset amount){
            require_auth(_self);    //创建者调用

            // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
            auto itr_neworder = _orders.emplace(get_self(), [&](auto &c) {
                c.id = _orders.available_primary_key(); // 内部方法，id自增
                c.buyer = buyer.value; // 设定各个属性
                c.receiver = receiver;
                c.amount = amount;
            });
        }
        ACTION deleteorder(const uint64_t id) { // 用来测试，不管，预留方法
            require_auth(_self);

            order_t order(_self, _self.value); //  获取结构体集合
            auto itr = order.find(id); // 传入key，获得结构体、

            eosio_assert(itr != order.end(), "no frozen order"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
            order.erase(itr) ; // 删掉这个结构体
        }

        // add by kuninup
        ACTION addscenery(const string &scenery_name, const asset scenery_price, const asset merall_income, const asset total_dividends, const string scenery_info);

        ACTION descenery(const uint64_t id) { // 用来测试，不管，预留方法
            require_auth(_self);

            scenery_t scenery(_self, _self.value); //  获取结构体集合
            auto itr = scenery.find(id); // 传入key，获得结构体、

            eosio_assert(itr != scenery.end(), "no frozen scenery"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
            scenery.erase(itr) ; // 删掉这个结构体
        }

        // typedef :相当于define
        //          生成一个          结构体名            结构体         的结构集合
        // 集合，里面包含很多st_miningqueue
        typedef eosio::multi_index<"miningqueue"_n, st_miningqueue> miningqueue_t;
        typedef eosio::multi_index<"coin"_n, coin> coin_t;
        coin_t _coins; // 所有卡的集合
        typedef eosio::multi_index<"user"_n, user> user_t;
        user_t _users; // 所有用户的集合
        typedef eosio::multi_index<"merchant"_n, merchant> merchant_t;
        merchant_t _merchants; // 所有商家的集合
        typedef eosio::multi_index<"order"_n, order> order_t;
        order_t _orders; // 所有订单的集合
        typedef eosio::multi_index<"scenery"_n, scenery> scenery_t;
        scenery_t _sceneries; // 所有用户的集合

    private:
        void setcoin(const name &owner, const uint64_t &type, const uint64_t &code);
        void onTransfer(name from, name to, asset quantity, string memo);
        void join_miningqueue(const name &miner, const uint64_t &type);
        inline vector<uint32_t> merge_seed(const capi_checksum256 &s);
};
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
// 外部函数，不用管
extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        eoschaincode p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        p.apply(receiver, code, action);
        eosio_exit(0);
    }
}
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
        _users(receiver, receiver.value),
        _merchants(receiver, receiver.value),
        _orders(receiver, receiver.value),// 定义struct结构体
        _sceneries(receiver, receiver.value){}//add by kuninup
        // eos保存数据的方式:多个struct
        // 根据合约名、结构体名、key三个得到struct内数据

        void apply(uint64_t receiver, uint64_t code, uint64_t action) ; // 部署合约时执行的方法，不用管

        // 用户
        TABLE user {
            uint64_t id; // 序列
            capi_name owner; // 拥有者

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(user, (id)(owner))
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
            asset amount; // 订单金额

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(order, (id)(buyer)(receiver)(amount))
        };
        // 景点 add by kuninup

        TABLE scenery {
            uint64_t id; // 序列
            string scenery_name; //景点名称
            asset scenery_price; //景点价格
            string scenery_merchantName;//景点属于的商家
            string scenery_info; //景点信息

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(scenery, (id)(scenery_name)(scenery_price)(scenery_merchantName)(scenery_info))
        };
        
        ACTION test() { // 用来测试，不管，预留方法

        }

        // add by Deaso
        ACTION adduser(const name owner);
        ACTION deleteuser(const uint64_t id);

        
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
        ACTION addorder(const name &buyer, const uint64_t receiver, const asset amount);

        ACTION delorder(const uint64_t id);

        // add by kuninup
        ACTION addscenery(const string scenery_name, const asset scenery_price, const string scenery_merchantName, const string scenery_info);

        ACTION delscenery(const uint64_t id);

        // typedef :相当于define
        //          生成一个          结构体名            结构体         的结构集合
        // 集合，里面包含很多st_miningqueue
        typedef eosio::multi_index<"user"_n, user> user_t;
        user_t _users; // 所有用户的集合
        typedef eosio::multi_index<"merchant"_n, merchant> merchant_t;
        merchant_t _merchants; // 所有商家的集合
        typedef eosio::multi_index<"order"_n, order> order_t;
        order_t _orders; // 所有订单的集合
        typedef eosio::multi_index<"scenery"_n, scenery> scenery_t;
        scenery_t _sceneries; // 所有用户的集合

    private:
        void onTransfer(name from, name to, asset quantity, string memo);
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
                  (test)
                  (adduser)
                  (deleteuser)
                  (addmerchant)
                  (delmerchant)
                  (addmoney)
                  (delmoney)
                  (addorder)
                  (delorder)
                  (addscenery)
                  (delscenery)
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
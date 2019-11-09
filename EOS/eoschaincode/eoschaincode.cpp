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
        _orders(receiver, receiver.value){}// 定义struct结构体
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
            string merchantName; // 商家名字
            string attractions;
            uint64_t credibility;
            asset amount; // 收入

            auto primary_key() const { return id; }
            EOSLIB_SERIALIZE(merchant, (id)(merchantName)(attractions)(credibility)(amount))
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
        ACTION addmerchant(const string &merchantName, const string &attractions,const uint64_t &credibility, const asset amount){
            require_auth(_self);    //创建者调用

            // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
            auto itr_newmerchant = _merchants.emplace(get_self(), [&](auto &c) {
                c.id = _merchants.available_primary_key(); // 内部方法，id自增
                c.merchantName = merchantName; // 设定各个属性
                c.attractions = attractions;
                c.credibility = credibility;
                c.amount = amount;
            });
        }
        ACTION delmerchant(const uint64_t id) { // 用来测试，不管，预留方法
            require_auth(_self);

            merchant_t merchant(_self, _self.value); //  获取结构体集合
            auto itr = merchant.find(id); // 传入key，获得结构体、

            eosio_assert(itr != merchant.end(), "no frozen merchant"); // 必須有找到，断言，不符合则报错，并且之前的修改全部回滚
            merchant.erase(itr) ; // 删掉这个结构体
        }

        // add by llbthxf
        ACTION addorder(const name &buyer, const name &receiver, const asset amount){
            require_auth(_self);    //创建者调用

            // 增加一个新结构体                 加入者    加入函数，传入要加入的结构体
            auto itr_neworder = _orders.emplace(get_self(), [&](auto &c) {
                c.id = _orders.available_primary_key(); // 内部方法，id自增
                c.buyer = buyer.value; // 设定各个属性
                c.receiver = receiver.value;
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

    private:
        void setcoin(const name &owner, const uint64_t &type, const uint64_t &code);
        void onTransfer(name from, name to, asset quantity, string memo);
        void join_miningqueue(const name &miner, const uint64_t &type);
        inline vector<uint32_t> merge_seed(const capi_checksum256 &s);
};

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

// 外部函数，不用管
extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) {
        eoschaincode p( name(receiver), name(code), datastream<const char*>(nullptr, 0) );
        p.apply(receiver, code, action);
        eosio_exit(0);
    }
}
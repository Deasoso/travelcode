#include <eosiolib/eosio.hpp> // 引入包
#include <eosiolib/singleton.hpp> // 引入包
// name 类 "ceshiyongeos"
// asset 类 "1.0000 EOS"
using namespace eosio; // 工作空间
// 类      类名      公开 的 合约
CONTRACT counter : public contract {  // 定义 CONTRACT（合约） 类
public: // 固定
    //            创建者     abi            二进制数据流
    counter(name receiver, name code, datastream<const char*> ds)  // 固定，构造函数
        :contract(receiver, code, ds), // 固定
        todos(receiver, receiver.value) {} // 下面定义的table

    ACTION init() { // 一个方法
        //          _self || get_self()：合约的创建者
        require_auth(_self); // 判定执行这个方法的用户
        todos.set(todo{}, _self);  // 单例方法专用，一个新的空单例
    }

    ACTION add(name author) {
        auto itr = todos.get(); // 获取单例的这一个struct
        itr.counter += 1; // 将单例数字 += 1
        todos.set(itr, _self); // 将加过数字的单例更新
    }

    TABLE todo { // TABLE 相当于struct
        uint64_t counter; // uint64_t: 相当于int ，数字
    };
    //     单例(仅一份) 字符串_n，把字符串转化为name
    typedef singleton<"todo"_n, todo> todo_table; // 第一个参数：table名，第二个参数：struct
    // 相当于 #define
    todo_table todos;// 这个单例的声明
};

EOSIO_DISPATCH( counter, (init)(add) ) // 定义abi
// abi 用于定义链上数据的格式，wasm二进制文件，用于执行


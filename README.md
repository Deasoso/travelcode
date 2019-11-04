# eoschaincode
eos链上的简单抽卡合约

### 開發須知
* 目前環境為 EOSIO.CDT Version 1.4.1 

eos 命令

# 连接到服务器
ssh root@47.99.174.126
#### 密码

# 进入cleos钱包服务器
cd eos/build/programs/cleos

# 解锁钱包
./cleos wallet unlock
#### # 这里输入wallet的解锁密码

# 将cpp文件编译为二进制文件
eosio-cpp /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.cpp -o /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.wasm

# 将cpp文件编译为abi格式文件
eosio-abigen /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.cpp -contract=eoschaincode --output=/root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.abi

# 部署合约
./cleos -u https://api.eosnewyork.io:443 set contract ceshiyongeos /root/gitdoc/travelcode/EOS/eoschaincode -p ceshiyongeos@active

# 获取链上数据
./cleos -u https://api.eosnewyork.io:443 get table -l 65536 ceshiyongeos ceshiyongeos coin

# 执行合约方法
./cleos -u https://api.eosnewyork.io:443 push action ceshiyongeos test '[]' -p ceshiyongeos@active

# 执行合约方法（带参数）
./cleos -u https://api.eosnewyork.io:443 push action ceshiyongeos burn '["ceshiyongeos", "2.0000 CCC", ""]' -p ceshiyongeos@active
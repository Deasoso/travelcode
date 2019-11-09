# eoschaincode
eos链上的简单抽卡合约

### 開發須知
* 目前環境為 EOSIO.CDT Version 1.4.1 

eos 命令

# 连接到服务器
ssh root@47.99.174.126
#### 密码

# cd到cleos钱包目录
cd eos/build/programs/cleos

# 解锁钱包
./cleos wallet unlock
#### # 这里输入wallet的解锁密码

# cd到代码目录里
cd /root/gitdoc/travelcode/EOS/eoschaincode

# 拉取自己提交的代码
git pull

# 将cpp文件编译为二进制文件
eosio-cpp /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.cpp -o /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.wasm

# 将cpp文件编译为abi格式文件
eosio-abigen /root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.cpp -contract=eoschaincode --output=/root/gitdoc/travelcode/EOS/eoschaincode/eoschaincode.abi

# 部署合约
./cleos -u https://api.eosnewyork.io:443 set contract ceshiyongeos /root/gitdoc/travelcode/EOS/eoschaincode -p ceshiyongeos@active

# 获取链上数据
./cleos -u https://api.eosnewyork.io:443 get table -l 65536 ceshiyongeos ceshiyongeos coin

# 执行合约方法
 钱包文件         定义节点                  执行方法      用户名   合约方法 参数       给权限
./cleos -u https://api.eosnewyork.io:443 push action ceshiyongeos test '[]' -p ceshiyongeos@active

# 执行合约方法（带参数）
./cleos -u https://api.eosnewyork.io:443 push action ceshiyongeos burn '["ceshiyongeos", "2.0000 CCC", ""]' -p ceshiyongeos@active

# 几个常识
eos的用户名字为长度12的字符串，只有abcdefg..z 12345
quantity 一般传入 "1.0000 EOS" 注意四位小数，空格及币名大写
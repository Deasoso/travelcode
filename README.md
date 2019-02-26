# cryptocoin-contracts
加密紀念幣 x 仙女座科技

### 開發須知
* 目前環境為 EOSIO.CDT Version 1.4.1 https://github.com/EOSIO/eosio.cdt/releases/tag/v1.4.1
* 上線合約帳號 eosflare.io/account/chainbankeos

### 合約功能
- [x] 管理 token & coins
- [x] 挖礦
    - [x] 由後端驅動的 RNG 
- [x] 交易所
- [x] 組合獎勵
- [x] token 回購機制
- [x] auto分紅機制
- [x] 推薦
- [ ] ibo

### 前端需求
- [x] 錢包適配
- [x] 交易所
- [x] 排行表
- [x] 推薦
- [ ] ibo頁面

### 需求列表
- [x] mining 打 log (用來記錄次數)
- [x] mining 挖, 挖矿支出的EOS数量1:10获得数量相对应的TOKEN
- [x] 交易 - add 交易手續費 3.5% 給賣方，takeorder 的時候收
- [x] 推薦 - 有效推薦人的設定
- [x] 交易 - 取消訂單的action
- [x] mining test
- [x] 於 kyubey.network 發佈
# cryptocoin-contracts
加密紀念幣 x 仙女座科技

### 合約功能
- [x] P0 管理 CCC & coins
- [x] P0 挖礦
    - [x] P0 由後端驅動的 RNG 
- [x] P1 交易所
- [ ] P2 排行表
- [x] P2 組合獎勵
- [x] P2 token 回購機制
- [x] P1 分紅
- [x] P1 推薦
- [ ] P1 ibo

### 前端需求
- [ ] P0 錢包適配
- [ ] P1 交易所
- [ ] P2 排行表
- [ ] P0 推薦
- [ ] P0 ibo頁面 
- [ ] P0 於 kyubey.network 發佈

### 開發須知
* 目前環境為 EOSIO.CDT Version 1.4.1 https://github.com/EOSIO/eosio.cdt/releases/tag/v1.4.1

### 需求列表
- [x] mining 打 log (用來記錄次數)
- [x] mining 挖, 挖矿支出的EOS数量1:10获得数量相对应的TOKEN
- [x] 交易 - add 交易手續費 3.5% 給賣方，takeorder 的時候收
- [x] 推薦 - 有效推薦人的設定
- [x] 交易 - 取消訂單的action
- [x] mining test
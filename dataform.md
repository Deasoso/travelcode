- 用户端
    - id
    - 用户名

- 商家端 c2quare
    - id
    - 商家名字 string
    - 总钱数 asset
    - 已提现 asset

- 景点 kuninup
    - id
    - 名称 string
    - 价格 asset
    - 属于的商家 string
    - 分数 uint64_t
    - 信息 string

- 订单 llbthxf
    - id
    - 购买方 （用户id） capi_name
    - 接收方 （商家id） uint64_t
    - 订单金额 asset

O（1）解决分红问题

- 用户端
    - id
    - 用户名
    - 余额

- 商家端 c2quare
    - id
    - 商家名字 string
    - 景点列表 string
    - 信誉度 uint64_t
    - 总收入 asset

- 景点 kuninup
    - id
    - 名称 string
    - 价格 asset
    - 商家总收入 asset
    - 分红总收入 asset
    - 信息 string

- 订单 llbthxf
    - id
    - 购买方 （用户id） capi_name
    - 接收方 （景点id） uint64_t
    - 订单金额 asset

O（1）解决分红问题

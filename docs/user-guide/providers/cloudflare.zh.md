目前，Mof 使用 Cloudflare GraphQL 获取 CDN 用量数据，用户需要配置与 Cloudflare 签署的 CDN 价格信息，以便计算账单数据。
后续，Mof 团队会自动化这个流程。

## 部分支持
> Cloudflare 目前只支持 **CDN** 成本分析。

## 添加账号

### 基本信息（可修改）
账号名称用于展示，可以重名，建议使用不同的名称

### 地域（不可修改）
请跟据 Cloudflare 账号归属，选择相应的地域

- [x] 全球站

### 访问密钥（不可修改）
请参考官方文档获取[访问密钥](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)
Mof 只需要可读权限，如果权限不全，会导致数据收集不全。

![img.png](img/cloudflare-cred.zh.png)

### 密钥权限
Mof 目前会使用 ListZone & Analytics and Logs 权限，考虑到后续迭代的时候，会逐步拓展分析粒度，我们建议赋予 API **Read all resources 权限**

![img.png](img/cloudflare-policy.png)

### 默认统计维度（可修改）
系统收集所有纬度的数据，默认纬度用于统计所有云厂商的成本，不影响数据准确性

### 拓展信息（可修改）
如果填写了保底流量 & 保底费用，Mof 会首先判断用量是否在保底区域内，如果溢出，会使用 CDN 单价计算成本。

如果没有填写保底流量 & 保底费用，Mof 会使用 CDN 单价计算成本。

| 选项            | 使用场景                                  |
|---------------|---------------------------------------|
| CDN 单价(美元/GB) | CDN 流量单价，如果填写了保底流量 & 保底单价，此价格将会是溢出单价。 |
| CDN保底流量(GB)   | 如果与 Cloudflare 签署了保底，请填写保底流量，否则填写 0。  |
| CDN保底费用(美元)   | 如果与 Cloudflare 签署了保底，请填写保底费用，否则填写 0。  |
| 价格开始月份        | 合约开始日期                                |
| 价格结束月份        | 合约结束日期                                |

## 更新账号
请在 **云账号** 先选择相应的账号。

### 基本信息
可修改，不影响数据分析。

### 扩展信息
可修改，立刻生效。

### 访问密钥
不可修改

### 定时数据同步
如果开启，Mof 会按照配置，自动同步数据

![img.png](img/cron.zh.png)

### 折扣列表
如果用户与 Cloudflare 有线下的折扣合约，并且不展示在账单数据中时，用户可以在此配置，折扣会影响到**智能账单**中的数据中。

![img.png](img/discount.zh.png)

**开启前**
![img.png](img/discount-before.zh.png)

**开启后**
![img.png](img/discount-after.zh.png)


## 删除云账号
删除云账号时，会删除所有成本 & 资源数据。
---
title: Cloudflare
description: 快速配置 Cloudflare，并开始分析云成本健康状态。 
---

系统使用 Cloudflare GraphQL 获取 CDN 用量数据，用户需要配置与 Cloudflare 签署的 CDN 价格信息，以便计算账单数据。

后续，我们会支持通过 API 拉取账单数据。

---

## 部分支持
Cloudflare 目前只支持 **CDN** 成本分析。

## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。


### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [ ] 中国站
- [x] 全球站

### **访问密钥**
请参考官方文档获取[访问密钥](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)

账单数据，不会采取任何**写操作**，请放心使用。


### **拓展信息**
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
请参考 [基本信息](basic.md)更新。

### **扩展信息**
可修改。

## 功能支持

| 功能         | 描述               |
|------------|------------------|
| **智能账单**   | 不支持分类            |
| `成本浏览器`    | :material-check: |
| `月账单`      | :material-check: |
| `日账单`      | :material-check: |
| `历史账单`     | :material-check: |
| `账单过滤`     | :material-check: |
| `单元成本浏览器`  | :material-check: |
| `资源账单`     | :material-check: |
| `计费项 & 用量` | :material-check: |
| `Mofis 报告` | :material-check: |
| `账单下载`     | :material-check: |
| `定制消息推送`   | :material-check: |
| `消息通知`     | :material-check: |
| `汇率转换`     | :material-check: |
| `服务器分析`    |  |
| **数据同步**   |                  |
| `手动同步`     | :material-check: |
| `自动同步`     | :material-check: |
| **标签管理**   |  |

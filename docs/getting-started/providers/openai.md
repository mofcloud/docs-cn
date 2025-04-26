---
title: OpenAI
description: 快速配置 OpenAI，并开始分析云成本健康状态。 
---

系统使用 [/v1/organization/costs](https://platform.openai.com/docs/api-reference/usage/costs) 获取账单数据。

## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。

### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [] 中国站
- [x] 全球站

### **访问密钥"**
请输入[OpenAI Admin Key](https://platform.openai.com/docs/api-reference/administration)。系统只会调用 Costs API。
账单数据，不会采取任何**写操作**，请放心使用。

## 更新账号
请参考 [基本信息](basic.md)更新。

## 功能支持

| 功能         | 描述               |
|------------|------------------|
| **智能账单**   | 不支持分类            |
| `成本浏览器`    | :material-check: |
| `月账单`      | :material-check: |
| `日账单`      | :material-check: |
| `历史账单`     | :material-check: |
| `账单过滤`     |  |
| `单元成本浏览器`  |  |
| `资源账单`     |  |
| `计费项 & 用量` |  |
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

---
title: AWS
description: 快速配置AWS，并开始分析云成本健康状态。 
---

## 账单类型
建议使用**账单报告**采集数据，数据默认存储在 S3，价格低廉，数据全。

Cost Explorer 根据请求数收费，如果频繁访问，成本高。

| 类型            | AWS 是否收费 ? | 描述                           |
|---------------|------------|------------------------------|
| Cost Explorer | ✅          | AWS 按 API 调用次数收费（贵） |
| Legacy CUR    | ✅          | 支持资源账单，账单存储在 S3，收取 S3 相关费用（便宜）       |
| CUR 2.0 （即将支持）    | ✅       | 支持资源账单，账单存储在 S3，收取 S3 相关费用（便宜）       |
| FOCUS 1.0 （即将支持）    | ✅          | 支持资源账单，账单存储在 S3，收取 S3 相关费用（便宜）       |


## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。

### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [x] 中国站
- [x] 全球站

### **AK/SK**
请参考官方文档获取[访问密钥](https://docs.aws.amazon.com/zh_cn/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey)

系统只需要可读权限，如果权限不全，会导致数据收集不全，可以选择**权限表**查询权限。

### Data Export
> 目前仅支持 Legacy CUR 账单类型。

AWS 默认不开启账单报告，请参考[AWS 创建成本和使用情况报告](https://docs.aws.amazon.com/zh_cn/cur/latest/userguide/cur-create.html)，Mof 只需要报告名称，刚刚开启账单报告的话，AWS 需要几个小时才可以开始同步，请耐心等待。

选项对系统的影响：

- **包括资源 ID**：请选择，否则无法查看资源级别账单
- **拆分成本分配数据**：无影响
- **自动刷新**：请选择，让 Mof 每次获取最新数据
- **配置 S3存储桶**：无影响
- **S3 路径前缀**：无影响
- **时间粒度**：请选择**每天**或者**每小时**，Mof 存储按月，按日数据
- **报告版本控制**：请选择**覆盖现有报告**
- **报告数据集成**：无影响
- **压缩类型**：无影响

## 更新账号
请参考 [基本信息](basic.md)更新。

### 扩展信息
可修改，如果修改了账单报告名称，系统在下一次同步数据的时候，会从新的报告同步。


## 功能支持

| 功能         | 描述                                      |
|------------|-----------------------------------------|
| **智能账单**   | 支持**服务**、**地域**、**账号**、**支付类型**、**标签**分类 |
| `成本浏览器`    | :material-check:                        |
| `月账单`      | :material-check:                        |
| `日账单`      | :material-check:                        |
| `历史账单`     | :material-check:                        |
| `账单过滤`     | :material-check:                        |
| `单元成本浏览器`  | :material-check:                        |
| `资源账单`     | :material-check: 仅在 Data Export 数据里支持   |
| `计费项 & 用量` | :material-check: 仅在 Data Export 数据里支持                       |
| `Mofis 报告` | :material-check:                        |
| `账单下载`     | :material-check:                        |
| `定制消息推送`   | :material-check:                        |
| `消息通知`     | :material-check:                        |
| `汇率转换`     | :material-check:                        |
| `服务器分析`    | :material-check:                        |
| **数据同步**   |                                         |
| `手动同步`     | :material-check:                        |
| `自动同步`     | :material-check:                        |
| **标签管理**   | :material-check:                        |


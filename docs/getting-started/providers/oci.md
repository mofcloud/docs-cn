---
title: Oracle Cloud
description: 快速配置 Oracle Cloud，并开始分析云成本健康状态。 
---

系统使用 OCI 账单 FOCUS API [object_storage:GetObject](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/managingobjects_topic-To_download_an_object_from_a_bucket.htm) 获取账单数据。

## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。

### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [ ] 中国站
- [x] 全球站

### **密钥**
请参考官方文档获取[访问密钥](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm#upload_key)

授权请参考[官方文档](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingpasswordrules.htm)

系统只需要可读权限，如果权限不全，会导致数据收集不全，可以选择**权限表**查询权限。

## 更新账号
请参考 [基本信息](basic.md)更新。

## 功能支持

| 功能         | 描述                                              |
|------------|-------------------------------------------------|
| **智能账单**   | 支持**服务**、**区间**、**地域**、**账号**、**支付类型**、**标签**分类 |
| `成本浏览器`    | :material-check:                                |
| `月账单`      | :material-check:                                |
| `日账单`      | :material-check:                                |
| `历史账单`     | :material-check:                                |
| `账单过滤`     | :material-check:                                |
| `单元成本浏览器`  | :material-check:                                |
| `资源账单`     | :material-check:            |
| `计费项 & 用量` | :material-check:            |
| `Mofis 报告` | :material-check:                                |
| `账单下载`     | :material-check:                                |
| `定制消息推送`   | :material-check:                                |
| `消息通知`     | :material-check:                                |
| `汇率转换`     | :material-check:                                |
| `服务器分析`    | :material-check:                                |
| **数据同步**   |                                                 |
| `手动同步`     | :material-check:                                |
| `自动同步`     | :material-check:                                |
| **标签管理**   | :material-check:                                |


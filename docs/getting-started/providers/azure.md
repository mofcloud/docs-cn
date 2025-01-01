---
title: Azure
description: 快速配置Azure，并开始分析云成本健康状态。 
---

系统会通过 service principal 读取账单相关数据。

## 准备工作
安装 Azure CLI（如果已经有 service principal，请忽略） 

如果没有创建 service principal，请根据如下的步骤，进行创建。用户也可以在 Azure 控制台中创建，步骤请参考官方文档。

### 1.创建 Azure Service Principal
运行如下命令

请将 appId, tenant, password 记录下来，Mof 将会使用此密钥。

```shell
az ad sp create-for-rbac -n "mofcloud"
```

### 2.添加权限
您可以把 Billing account 或者 Management Group 的 READ 权限赋予 service principal。

运行如下命令（Billing account 或者 Management Group ID 请在控制台中获取）

```shell
az role assignment create --assignee <SERVICE_PRINCIPAL_APP_ID> --role Reader --scope "/providers/Microsoft.Management/managementGroups/<MANAGEMENT_GROUP_ID>"
```

OR

```shell
az role assignment create --assignee <SERVICE_PRINCIPAL_APP_ID> --role Reader --scope "/providers/Microsoft.Management/managementGroups/<MANAGEMENT_GROUP_ID>"
```

## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。

### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [ ] 中国站
- [x] 全球站

### **Credentials**
请根据第一步创建的密钥信息填写。

系统只需要可读权限，如果权限不全，会导致数据收集不全，可以选择**权限表**查询权限。

## 更新账号
请参考 [基本信息](basic.md)更新。


## 功能支持

| 功能         | 描述                                                      |
|------------|---------------------------------------------------------|
| **智能账单**   | 支持**服务**、**资源组**、**订阅**、**地域**、**账号**、**支付类型**、**标签**分类 |
| `成本浏览器`    | :material-check:                                        |
| `月账单`      | :material-check:                                        |
| `日账单`      | :material-check:                                        |
| `历史账单`     | :material-check:                                        |
| `账单过滤`     | :material-check:                                        |
| `单元成本浏览器`  | :material-check:                                        |
| `资源账单`     | :material-check:                                        |
| `计费项 & 用量` | :material-check:                                        |
| `Mofis 报告` | :material-check:                                        |
| `账单下载`     | :material-check:                                        |
| `定制消息推送`   | :material-check:                                        |
| `消息通知`     | :material-check:                                        |
| `汇率转换`     | :material-check:                                        |
| `服务器分析`    | :material-check:                                        |
| **数据同步**   |                                                         |
| `手动同步`     | :material-check:                                        |
| `自动同步`     | :material-check:                                        |
| **标签管理**   | :material-check:                                        |



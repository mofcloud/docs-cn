---
title: GCP
description: 快速配置GCP，并开始分析云成本健康状态。 
---

系统会通过 service account 读取谷歌云账单相关数据。

## 准备工作
需要将 Cloud Billing 数据导出到 BigQuery，如果您尚未将 Cloud Billing 数据导出到 BigQuery。建议您创建一个专用项目来托管 Cloud Billing 数据，以便更好地管理您的账单数据。详细步骤请查看[Google Cloud 官方文档 - 将 Cloud Billing 数据导出到 BigQuery](https://cloud.google.com/billing/docs/how-to/export-data-bigquery?hl=zh-cn)。


请按照以下步骤操作：
    
1. 创建一个新的项目，用于托管 Cloud Billing 导出数据
2. 创建一个 BigQuery 数据集，用于存储 Cloud Billing 导出数据。
3. 启用 Cloud Billing 导出，将数据导出到您创建的 BigQuery 数据集。


#### 1.创建 Service Account
在托管 Cloud Billing 数据的项目中创建 service account。
创建时给新建 service account 授予对项目的 **“BigQuery Job User”** 角色和 **”Cloud Asset Viewer“** 角色。
创建 service account 完成后，请生成 json 格式的密钥，用于后续的配置。


#### 2.添加 BigQuery 权限
导航到 BigQuery。确保您位于托管 Cloud Billing 的项目中。
在“探索器”面板中，找到 Cloud Billing 数据集，单击名称旁边垂直的三个点(⋮)，然后单击“共享”。 在右侧，单击“+ 添加主账号”。 
添写上面创建的 service account。 分配 **“BigQuery Data Viewer”** 角色，并保存。


#### 3.开启 Cloud Asset API
如果您没有开启 Cloud Asset API，请导航到 API 和服务，点击“+启用 API 和服务”。
搜索“Cloud Asset API”，进入 API 的详情页面，点击开启。

## 添加账号
### **基本信息**
请参考 [基本信息](basic.md)配置。

### **地域**
请跟据账号归属，选择相应的地域。**可修改**

- [ ] 中国站
- [x] 全球站

### 访问密钥
系统只需要可读权限，如果权限不全，会导致数据收集不全，可以选择**测试账号权限**查询权限。

- **服务账号密钥（JSON 格式）**

    输入 service account 的 JSON 格式密钥。

- **BigQuery 数据集名称**

    输入 Cloud Billing 数据所在 BigQuery Dataset 的名称。

- **BigQuery 表格名称**

    输入 Cloud Billing 数据所在 BigQuery Dataset Table 的名称。


## 更新账号
请参考 [基本信息](basic.md)更新。

### 扩展信息
可修改，如果修改了 BigQuery 相关名称，系统在下一次同步数据的时候，会从新的数据同步。

## 功能支持

| 功能         | 描述                                            |
|------------|-----------------------------------------------|
| **智能账单**   | 支持**服务**、**地域**、**账号**、**支付类型**、**标签**分类      |
| `成本浏览器`    | :material-check:                              |
| `月账单`      | :material-check:                              |
| `日账单`      | :material-check:                              |
| `历史账单`     | :material-check:                              |
| `账单过滤`     | :material-check:                              |
| `单元成本浏览器`  | :material-check:                              |
| `资源账单`     | :material-check: 仅在 Export ResourceID 时支持 |
| `计费项 & 用量` | :material-check:                              |
| `Mofis 报告` | :material-check:                              |
| `账单下载`     | :material-check:                              |
| `定制消息推送`   | :material-check:                              |
| `消息通知`     | :material-check:                              |
| `汇率转换`     | :material-check:                              |
| `服务器分析`    | :material-check:                              |
| **数据同步**   |                                               |
| `手动同步`     | :material-check:                              |
| `自动同步`     | :material-check:                              |
| **标签管理**   |                                               |


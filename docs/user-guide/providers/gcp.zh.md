## 简介

Mof 会通过 service account 读取谷歌云账单相关数据。

---

## 准备工作

### 前提条件：需要将 Cloud Billing 数据导出到 BigQuery

需要您将 Cloud Billing 数据导出到 BigQuery。如果您尚未将 Cloud Billing 数据导出到 BigQuery。请按照以下步骤操作：

1. 创建一个新的项目，用于托管 Cloud Billing 导出数据
2. 创建一个 BigQuery 数据集，用于存储 Cloud Billing 导出数据。
3. 启用 Cloud Billing 导出，将数据导出到您创建的 BigQuery 数据集。

详细步骤请查看[Google Cloud 官方文档 - 将 Cloud Billing 数据导出到 BigQuery](https://cloud.google.com/billing/docs/how-to/export-data-bigquery?hl=zh-cn)。

> Mof 建议您创建一个专用项目来托管 Cloud Billing 数据，以便更好地管理您的账单数据。

设置好 Cloud Billing 导出后，您可以继续执行以下步骤。

### 步骤一：创建 Service Account

在托管 Cloud Billing 数据的项目中创建 service account。创建时给新建 service account 授予对项目的 **“BigQuery Job User”** 角色和 **”Cloud Asset Viewer“** 角色。

创建 service account 完成后，请生成 json 格式的密钥，用于后续的配置。
![img.png](img/gcp-sa-key.zh.png)

### 步骤二：添加 BigQuery 权限

导航到 BigQuery。确保您位于托管 Cloud Billing 的项目中。在“探索器”面板中，找到 Cloud Billing 数据集，单击名称旁边垂直的三个点(⋮)，然后单击“共享”。 在右侧，单击“+ 添加主账号”。 添写上面创建的 service account。 分配 **“BigQuery Data Viewer”** 角色，并保存。
![img.png](img/gcp-sa-ds.zh.png)

### 步骤三：开启 Cloud Asset API

如果您没有开启 Cloud Asset API。请导航到 API 和服务，点击“+启用 API 和服务”。搜索“Cloud Asset API”，进入 API 的详情页面，点击开启。

---

## 添加账号

### 基本信息（可修改）

账号名称用于展示，可以重名，建议使用不同的名称。

### 地域（不可修改）

请跟据腾讯云账号归属，选择相应的地域。

- [x] 国际站

### 访问密钥（不可修改）

Mof 只需要可读权限，如果权限不全，会导致数据收集不全，可以选择**测试账号权限**查询权限。

![img.png](img/gcp-cred.zh.png)

#### 访问密钥参数说明

- **Service Account**

  > 输入准备工作中创建的 service account 电子邮件地址。例，billing@billing-management.iam.gserviceaccount.com

- **Service Account 密钥（JSON 格式）**

  > 输入 service account 的 JSON 格式密钥。
  > ![img.png](img/gcp-sa-key.zh.png)

- **Project ID**

  > 输入 Cloud Billing BigQuery Dataset 所在的 Project ID。

- **BigQuery Dataset Name**

  > 输入 Cloud Billing 数据所在 BigQuery Dataset 的名称。

- **BigQuery Dataset Table Name**

  > 输入 Cloud Billing 数据所在 BigQuery Dataset Table 的名称。

- **如何获取 ProjectID，Datset Name 和 Table Name？**

  > BigQuery 数据集表 ID 是由三个部分组成的，用点号分隔。第一部分是项目 ID，它是你在 GCP 上创建的项目的唯一标识符。第二部分是数据集名，它是你在项目中存储表的容器。第三部分是表名，它是你在数据集中定义的表的名称。

  > 例如，下图中的表 ID 为 billing-management-358508.all_billing_data.gcp_billing_export_resource_v1_0120A4_123456_D7F893，其中 billing-management-358508 是 **project ID**，all_billing_data 是 **dataset name**，gcp_billing_export_resource_v1_0120A4_123456_D7F893 是 **dataset table name**。
  > ![img.png](img/gcp-project-table.zh.png)

### 默认统计维度（可修改）

系统收集所有纬度的数据，默认纬度用于统计所有云厂商的成本，不影响数据准确性。

---

## 更新账号

请在 **云账号** 先选择相应的账号。

### 基本信息

可修改，不影响数据分析。

### 扩展信息

可修改，如果修改了账单报告名称，Mof 在下一次同步数据的时候，会从新的报告同步。

### 访问密钥

不可修改。

### 定时数据同步

如果开启，Mof 会按照配置，自动同步数据。

![img.png](img/cron.zh.png)

### 标签管理

> 标签在数据同步之后，才会展示

Mof 在同步账单之后，会列出所有可用的标签，如果想要在**智能账单**中按照标签分类，需要在这里配置。

之所以有这配置，是因为标签可能会非常多（包括系统标签），会影响用户体验。

![img.png](img/tag.zh.png)

### 折扣列表

如果用户与谷歌云有线下的折扣合约，并且不展示在账单数据中时，用户可以在此配置，折扣会影响到**智能账单**中的数据中。

![img.png](img/discount.zh.png)

**开启前**
![img.png](img/discount-before.zh.png)

**开启后**
![img.png](img/discount-after.zh.png)

---

## 删除云账号

删除云账号时，会删除所有成本 & 资源数据。

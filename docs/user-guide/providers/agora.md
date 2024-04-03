Mof will use [chormedp](https://github.com/chromedp/chromedp) to select billing data from cosole.

---

## Partial support
> Bill groups are not supported yet


## Add account
=== "1.Basic info"
    !!! example "Explanation"
        Account name can be updated later. **Modifiable**

=== "2.Region"
    !!! example "Explanation"
        Please choose your region based on account

        - [x] China
        - [ ] Global

=== "3.Email/Password"
    !!! example "Explanation"
        Please enter [Agora console](https://sso.shengwang.cn/cn/v5/login) login email and password

        ![](img/en/agora-cred.png)

        ![](img/en/pass-cred.png)

=== "4.Permission"
    !!! example "Explanation"
        Only billing data will be collected. Mof won't do any **write** operation.

=== "5.Default group by"
    !!! example "Explanation"
        For grouping bill data which is based on Cloud Provider's raw data.


## Update account
=== "1.Basic info"
    !!! example "Explanation"
        Modifiable

=== "2.Extension"
    !!! example "Explanation"
        Modifiable

=== "3.Credential"
    !!! example "Explanation"
        Unmodifiable

## Auto sync
!!! example "Explanation"
    Mof will sync data automatically.

    ![](img/en/cron.png)

## 标签管理
!!! example "解释"
Mof 在同步账单之后，会列出所有可用的标签，如果想要在**智能账单**中按照标签分类，需要在这里配置。

    之所以有这配置，是因为标签可能会非常多（包括系统标签），会影响用户体验。

    ![](img/zh/tag.png)

## 折扣列表
!!! example "解释"
如果用户有线下的折扣合约，并且不展示在账单数据中时，用户可以在此配置，折扣会影响到**智能账单**中的数据中。

    ![](img/zh/discount.png)

## 锁定云账号和账单
!!! example "解释"
为了防止重复拉取账单数据时，因为某些因素的改变，如标签等，导致账单过往账单可能会被更新，引入了两个锁。

    - **账号锁**：不再拉取新的数据
    - **账单锁**：不更新指定月份的账单

    ![](img/zh/lock.png)

## 数据覆盖
!!! example "解释"
用于覆盖某月，某个 Group 下的【应付金额】。

    ![](img/zh/override-table.png)

    ![](img/zh/override-detail.png)

## 删除云账号
删除云账号时，会删除所有成本 & 资源数据。

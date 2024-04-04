Mof [ListUBillDetail](https://docs.ucloud.cn/api/ubill-api/list_u_bill_detail) API to pull billing data.

---

## Add account
=== "1.Basic info"
    !!! example "Explanation"
        For represent, username could be duplicated

=== "2.Locale"
    !!! example "Explanation"
        Please select your locale based on account belongs to.

        - [x] China
        - [ ] Global

=== "3.AK/SK"
    !!! example "Explanation"
        Please refer to official docs of [AK/SK](https://docs.ucloud.cn/uproject/user)
        Mof needs **read only** permission.

        ![](img/en/aksk-cred.png)

=== "4.Permission"
    !!! example "Explanation"
        Copy bellow permission to AK/SK

        ```json
        {
          "Version": "1",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": [
                "iam:ListPoliciesForUser",
                "iam:GetIAMPolicy",
                "ubill:ListUBillDetail"
              ],
              "Resource": [
                "*"
              ]
            },
            {
              "Effect": "Allow",
              "Action": [
                "cloudwatch:ListMonitorProduct",
                "cloudwatch:GetProductMetrics",
                "cloudwatch:GetResourceById",
                "cloudwatch:GetResourceByGroup",
                "cloudwatch:ListNotifyUser",
                "cloudwatch:GetMetricTags",
                "cloudwatch:QueryMetricData",
                "cloudwatch:ListResource",
                "cloudwatch:ListResourceGroup",
                "cloudwatch:ListAlertStrategyTemplate",
                "cloudwatch:ListAlertRecord",
                "cloudwatch:QueryMetricDataOverview",
                "cloudwatch:ListAlertStrategy",
                "cloudwatch:ListAlertShieldStrategy",
                "cloudwatch:ListNotifyGroup"
              ],
              "Resource": [
                "*"
              ]
            }
          ]
        }
        ```

=== "5.Default group by"
    !!! example "Explanation"
        All billing data will be collected with all groups, it's used while grouping all cloud accounts data.

## Update cloud account
=== "1.Basic info"
    !!! example "Explanation"
        Modifiable.

=== "2.Extension"
    !!! example "Explanation"
        Modifiable. Once updated, Mof will sync from new bill report.

=== "3.Credential"
    !!! example "Explanation"
        Unmodifiable.

## Auto sync
!!! example "Explanation"
    Mof will run cron job based on configuration

    ![](img/en/cron.png)

## Tag management
!!! example "Explanation"
    Mof will list all available tags in billing data. In order to group bills in **Smart bills** by tag, user needs to select keys here.

    ![](img/en/tag.png)

## Discount list
!!! example "Explanation"
    In some case, if bills from cloud account does not contain special discount, user can apply discount on bill data.

    ![](img/en/discount.png)

## Lock Account and Bills
!!! example "Explanation"
    There are two types of locks which can lead to no updates on bills while syncing data.

    - **Account lock**：Not pulling billing data anymore
    - **Bill lock**：Not pulling billing data on specific month

    ![](img/en/lock.png)

## Billing Data Override
!!! example "Explanation"
    Used to override **payment** data.

    ![](img/en/override-table.png)

    ![](img/en/override-detail.png)

## Delete account
All related data will be deleted permanently.

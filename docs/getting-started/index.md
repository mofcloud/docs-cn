## Add Cloud Account
=== "1: Choose Cloud"
    ![](img/en/add-account-to-choose.png)

=== "2: Account info"

    !!! info "Steps"
        - Choose **Cloud Accounts** -> **Add Cloud Account** -> **AWS**

        - Fill forms
            - **Basic info**：For represent, username could be duplicated
            - **Locale**：If currency of AWS is unknown, currency of global(USD), china(CNY) would be used for billing data
            - **AK/Sk**：Refer to [official docs](https://docs.aws.amazon.com/zh_cn/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey) to get credentials，permissions as bellow:
            ``` json
            {
                "Version": "2012-10-17",
                "Statement": [
                    {
                        "Sid": "VisualEditor0",
                        "Effect": "Allow",
                        "Action": [
                            "sts:GetCallerIdentity",
                            "iam:ListAttachedUserPolicies",
                            "iam:GetPolicy",
                            "iam:GetPolicyVersion",
                            "ce:GetCostAndUsage",
                            "ce:GetDimensionValues",
                            "ce:GetTags",
                            "ec2:Describe*",
                            "cur:DescribeReportDefinitions",
                            "s3:ListBucket",
                            "s3:GetObject",
                        ],
                        "Resource": "*"
                    }
                ]
            }
            ```
            - **Default group by**：All billing data will be collected with all groups, it's used while grouping all cloud accounts data.
            - **Bill report name**: Optional. Resource level bills will be available if provided. [Official docs for enabling bill report on AWS](https://docs.aws.amazon.com/zh_cn/cur/latest/userguide/cur-create.html). 
        ![Image title](img/en/add-account-to-fill.png)

=== "3: Sync Data"

    !!! info "Check synchronization"
        As soon as account added, system will start to collect data immediately. 

        At first time, system will collect 3 months bill data and resource data.
    
        ![Image title](img/en/sync-data.png)

## Smart bills
As soon as synchronization finished, **Smart bills** is available for bill analysis.

!!! info "功能"
    **Bill groups**，**Filter**，**Download bills** are common to all views.

    - **Smart**
        - Abnormal, groups, resource bills, bill detail, mofis analysis
    - **Monthly**
        - Monthly bill, bill prediction
    - **History**
        - Bill history, Mofis analysis
    - **Server Analysis**
        - Utilization, bills, configurations, monitoring data, Mofis analysis

### Smart
!!! example "Target bill abnormal and root cause"
    1. Target abnormal **Unit** via **Abnormal chart** & **Mofis analysis**  
    2. Target abnormal **resource** via **resource bill**
    3. Target **root cause** via **resource usage**

=== "Bill abnormal"

    ![Image title](img/en/smart-bill-1.png)

=== "Resource bill"

    ![Image title](img/en/smart-bill-2.png)

=== "Resource usage"

    ![Image title](img/en/smart-bill-3.png)

### Monthly
Traditional monthly bill view & estimation.

![Image title](img/en/monthly-bill.png)

### History
![Image title](img/en/bill-trend.png)

## Download bills
![Image title](img/en/download-bill.png)

![Image title](img/en/download-bill-excel.png)

## Server analysis
!!! example "Determine【Unused】&【Low util】"
    1. Determine【Unused】&【Low util】servers via **Overview**
    2. Check **Low util** via**Metrics**
    3. Check historical reasons via **Bill**
    4. View **configurations** via *Attributes*

=== "Overview"

    ![Image title](img/en/server-1.png)

=== "Metrics"

    ![Image title](img/en/server-2.png)

=== "Bill"

    ![Image title](img/en/server-4.png)

=== "Attributes"

    ![Image title](img/en/server-3.png)



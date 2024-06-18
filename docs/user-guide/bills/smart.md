!!! tip "Let mof answer bellow questions for you："
    - Total Cost？
        - Mofis analysis
        - Cost explorer
    - Any abnormal？
        - Abnormal chart
        - Group bills
    - Estimation？
        - Group chart
    - Daily expense？
        - Daily chart
    - Why？
        - Bill detail
    - What to do？
        - Resource bills

Bill unit：

``` mermaid
graph LR
  A[Total] --> B[Group];
  B --> C[Charge item];
  C --> D[Resource];
  D --> E[Resource charge item];
  E --> F[Resource usage];
```

## Total Cost？
=== "Mofis analysis"

    !!! example "Mofis?"
        Mofis is still at entry level intellegence, we will keeps to improve mofis.

    ![](img/en/mofis-smb.png)

=== "Cost explorer"
    ![](img/en/filter.png)

## Any abnormal?
=== "Abnormal chart"

    !!! example "How to read the chart？"
        Similar to candle chart in stock market.

    ![](img/en/abnormal-metrics.png)

=== "Group chart"

    !!! example "How to read the chart？"
       Provide monthly bills with user selected group by option including estimation.

    ![](img/en/group-metrics.png)

=== "Daily chart"

    !!! example "How to read the chart？"
        Provide daily bill metrics.

    ![](img/en/daily-metrics.png)

## Why?
=== "Bill detail"

    !!! example "How to read bill detail？"
        1. Any abnormal on **resource count**？
        2. Any abnormal on **charge item**？

    ![](img/en/table-detail-smb.png)

=== "Mofis report"

    !!! example "Whats in Mofis？"
        1. Any abnormal on **charge item**？
        2. What about **Usage**？
        3. Any **resource count** difference？

    ![](img/en/mofis-group.png)

## What to do?
=== "Resource bills"

    !!! example "How to read resource bills？"

        - History：Is there any historical billing problem？
        - Charge item：Any abnormal？
        - Usage：Any abnormal？

    ![](img/en/select-resource.png)
    ![](img/en/resource-detail.png)

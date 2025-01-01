Mof is using Cloudflare GraphQL to pull CDN usage data，user needs to provide CDN price in order to calc final bill amount.

---

## Partial support
> Cloudflare only support **CDN** cost analysis

## Add account
=== "1.Basic info"
    !!! example "Explanation"
        For represent, username could be duplicated

=== "2.Locale"
    !!! example "Explanation"
        Please select your locale based on account belongs to.

        - [ ] China
        - [x] Global

=== "3.Credential"
    !!! example "Explanation"
        Please refer to [Officia docs](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)

        ![](img/en/cloudflare-cred.png)

=== "4.Permission"
    !!! example "解释"
        Please grant read permission to Mof

        ![](img/en/cloudflare-policy.png)

=== "5.Default group by"
    !!! example "Explanation"
        All billing data will be collected with all groups, it's used while grouping all cloud accounts data.

=== "6.Extension"
    !!! example "Explanation"
        
        | 选项            | 使用场景                                  |
        |---------------|---------------------------------------|
        | CDN Price(USD/GB) | If base amount and base traffic were filled, that system will use this price to calc extra bill amount |
        | CDN base traffic(GB)   | Optional, fill 0 if there is no base traffic  |
        | CDN base Amount(USD)   | Optional, fill 0 if there is no base amount  |
        | Price start        | Start time of price                                |
        | Price end        | End time of price                                |

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

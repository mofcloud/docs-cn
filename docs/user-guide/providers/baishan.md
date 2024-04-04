Mof will use [chormedp](https://github.com/chromedp/chromedp) to select billing data from console.

---

## Partial support
> Only **CDN** analysis is supported

## Add account
=== "1.Basic info"
    !!! example "Explanation"
        For represent, username could be duplicated

=== "2.Locale"
    !!! example "Explanation"
        Please select your locale based on account belongs to.

        - [x] China
        - [ ] Global


=== "3.Credential"
    !!! example "Explanation"
        Enter [Baishan Console](https://uc.portal.baishancloud.com/home.html#/login) username and password

        ![](img/en/baishan-cred.png)

        ![](img/en/pass-cred.png)

=== "4.Permission"
    !!! example "Explanation"
        Mof won't do any **write** operation.

=== "5.Default group by"
    !!! example "Explanation"
        All billing data will be collected with all groups, it's used while grouping all cloud accounts data.


=== "6.Extension"
    !!! example "Explanation"
        BaishanCloud did not provide billing API, mof will login to console and collect bandwidth data and calc invoice based on price user provided

        | Option            | Desc                                 |
        |---------------|--------------------------------------|
        | CDN Price(Yuan/MB) | CDN price |
        | Price start        | start date                               |
        | Price end        | end date                               |

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
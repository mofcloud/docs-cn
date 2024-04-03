## Concept
In order to map bills from cloud account to organizations, mof brings mapping concept which can assign bill groups to orgs.

![](img/en/org-arch.png)

| Concept      | Description                                                                        | 
|--------------|------------------------------------------------------------------------------------|
| Organization | Similar to file system                                                             |
| Ruleset      | The mappings from cloud account group bills to organization with version supported |

## Example
=== "1.Create org"
    Multiple organizations are supported

    ![](img/en/create-org.png)

=== "2.Create department"
    Name of department can be duplicated, but not recommended.

    ![](img/en/create-dep.png)

=== "3.Add monthly mapping"
    We need **mappings** for every month.

    ![](img/en/create-month.png)

=== "4.Binding Cloud Account"
    > ⚠️ Caution！
    > Please make sure to save mappings!

    User can select multiple cloud accounts with one group by.

    ![](img/en/bind-account.png)

=== "5.Add Mapping"
    In this example, we will map as bellow.

    - 【AmazonEC2】to【Team-A】
    - 【AmazonLightsail】to【Team-B】
    - Save

    ![](img/en/bind-group.png)

=== "6.Check bills"
    Check **Smart Bills** of organization

    ![](img/en/smb.png)


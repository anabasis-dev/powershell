
New-ADOrganizationalUnit -Name "OrganizationalUnit1" -Path "DC=$domainComponent0,DC=$domainComponent1"
New-ADOrganizationalUnit -Name "OrganizationalUnit2" -Path "DC=$domainComponent0,DC=$domainComponent1"




$password = (ConvertTo-SecureString P@$$w0rd -AsPlainText -Force)

New-ADUser -DisplayName:"user1" -GivenName:"user1" -Name:"user1" -Path:"OU=OrganizationalUnit1,DC=$domainComponent0,DC=$domainComponent1" -SamAccountName:"user1" -Surname:"user1" -Type:"user" -AccountPassword  -Enabled $true
New-ADUser -DisplayName:"user2" -GivenName:"user2" -Name:"user2" -Path:"OU=OrganizationalUnit2,DC=$domainComponent0,DC=$domainComponent1" -SamAccountName:"user2" -Surname:"user2" -Type:"user" -AccountPassword (ConvertTo-SecureString P@$$w0rd -AsPlainText -Force) -Enabled $true

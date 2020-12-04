Connect-MsolService
$UserPrincipalName = Read-Host -Prompt "Enter the exisitng UPN"
$NewUserPrincipalName = Read-Host -Prompt "Enter the new UPN"
Set-MsolUserPrincipalName -UserPrincipalName $UserPrincipalName -NewUserPrincipalName $NewUserPrincipalName

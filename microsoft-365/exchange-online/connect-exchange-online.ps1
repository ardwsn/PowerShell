$UserPrincipalName = Read-Host -Prompt "Enter the credentials of the 365 administrator account"
Connect-ExchangeOnline -UserPrincipalName $UserPrincipalName

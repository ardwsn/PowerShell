Microsoft Azure Active Directory Module for  https://www.microsoft.com/en-us/download/details.aspx?id=41950

.NET Framework 3.5

In order to use the cmdlets for Exchange Online, you will need to ensure that the following prerequisites have been fulfilled:

1. Ensure that the network that you are connected to is set to "Private" in Windows 10 Network & Internet settings, and not "Public"
2. Open PowerShell as an Administrator, run "Set-ExecutionPolicy RemoteSigned"
3. Run "Install-PackageProvider -Name NuGet -Force"
4. Run "Install-Module -Name PowerShellGet -Force"
5. Run "Install-Module -Name ExchangeOnlineManagement"
6. Run "Import-Module ExchangeOnlineManagement"

If you find that any of the above cmdlets either do not work, please refer to the Microsoft documentation in the following links:

https://docs.microsoft.com/en-us/powershell/exchange/exchange-online-powershell-v2?view=exchange-ps

https://docs.microsoft.com/en-us/powershell/scripting/gallery/installing-psget?view=powershell-7.1

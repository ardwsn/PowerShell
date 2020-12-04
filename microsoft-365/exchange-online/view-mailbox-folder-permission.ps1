$Identity = Read-Host -Prompt "Enter the address for the user/calendar that you wish to check existing permissions"
Get-MailboxFolderPermission -Identity $Identity":\Calendar"
$Identity = Read-Host -Prompt "Enter the address for the user/calendar that you wish to apply the permissions to"
$User = Read-Host -Prompt "Enter the address for the user who requires the permissions to the calendar"
$AccessRights = Read-Host "Enter the permissions level which you wish to grant (Author, Contributor, Editor, None, NonEditingAuthor, Owner, PublishingEditor, PublishingAuthor, Reviewer). Additional individual permissions levels can be found at https://docs.microsoft.com/en-us/powershell/module/exchange/mailboxes/set-mailboxfolderpermission?view=exchange-ps"
Set-MailboxFolderPermission -Identity $Identity":\Calendar" -User $User -AccessRights $AccessRights

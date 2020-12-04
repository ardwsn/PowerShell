#It is recommended to uninstall the AzureAD PowerShell module, and replace with AzureADPreview.
#If you have both installed, modify Connect-AzureAD to AzureADPreview\Connect-AzureAD

$AllowGroupCreation = "True"

Connect-AzureAD

$settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
if(!$settingsObjectID)
{
	  $template = Get-AzureADDirectorySettingTemplate | Where-object {$_.displayname -eq "group.unified"}
    $settingsCopy = $template.CreateDirectorySetting()
    New-AzureADDirectorySetting -DirectorySetting $settingsCopy
    $settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
}

$settingsCopy = Get-AzureADDirectorySetting -Id $settingsObjectID
$settingsCopy["EnableGroupCreation"] = $AllowGroupCreation

Set-AzureADDirectorySetting -Id $settingsObjectID -DirectorySetting $settingsCopy

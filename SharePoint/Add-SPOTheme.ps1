$themeName = #Provide a theme name here

$themePalette = #Paste the PowerShell output from https://developer.microsoft.com/en-us/fluentui#/styles/themegenerator?fabricVer=5 with the @{ immediately after the "="

# You will be prompted to enter a URL for the Connect-SPOService cmdlet. This will follow the syntax of https://clientname-admin.sharepoint.com/. 
#Once this has been specified, enter the Global Admin credentials
Connect-SPOService

Add-SPOTheme -Name $themeName -Palette $themePalette -IsInverted $false

# The theme will now be available to select within SharePoint
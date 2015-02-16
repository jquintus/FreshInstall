# Minimum install for pc
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Windows Options
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions
Enable-RemoteDesktop


# Must Have Toys
cinst -y GoogleChrome
cinst -y KickAssVim

cinst -y git
cinst -y SourceTree

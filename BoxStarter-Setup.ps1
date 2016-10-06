# To Run From Web:  http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/jquintus/QuintusInstall/master/BoxStarter-Setup.ps1
# To Run From Command Line:  Install-BoxstarterPackage -DisableReboots -PackageName https://gist.githubusercontent.com/jquintus/00610923c715d9569258/raw/BoxsterSetup
# http://boxstarter.org/WebLauncher
# References: 
#           http://blog.zerosharp.com/provisioning-a-new-development-machine-with-boxstarter/
#           https://github.com/habaneroconsulting/boxstarter-scripts/blob/master/dev-sp-vs2012.txt

#### Boxstarter options
#$Boxstarter.RebootOk=$false # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Set the computer name
$defaultComputerName = "Acer-S7"
$computerName = Read-Host -Prompt "Please Enter the computer name [$defaultComputerName]"
if ($computerName -eq '') { $computerName = $defaultComputerName}

Write-Output "Setting computer name to $computerName"
Rename-Computer $computerName

# Windows Options
Set-TaskbarOptions -lock
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions
Enable-RemoteDesktop
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula -getUpdatesFromMS

# Must Have Toys
cinst -y GoogleChrome
cinst -y KickAssVim
cinst -y Firefox
cinst -y greenshot # Keep this before Dropbox to make sure we get the print screen hooks registered
cinst -y keepass
cinst -y cmder.portable
# cinst -y jquintus.ConEmuConfig #TO DO:  Make this work

# Less Important Toys
cinst -y fiddler4
cinst -y 7zip.install
cinst -y 7zip.commandline
cinst -y sysinternals
cinst -y ditto
cinst -y filezilla

cinst -y slack

cinst -y winmerge
cinst -y mpc-hc
cinst -y dropbox
cinst -y git
cinst -y autohotkey.portable
cinst -y calibre

cinst -y boxstarter.chocolatey
cinst -y MicrosoftSecurityEssentials
cinst -y WinDirStat
cinst -y WindowsLiveWriter
cinst -y SourceTree

cinst -y GnuWin
cinst -y nodejs.install
cinst -y npm
cinst -y mongodb

#Less important things near the bottom
cinst -y spotify
cinst -y dependencywalker
cinst -y paint.net
cinst -y ScriptCs
cinst -y windowslivewriter
cinst -y NugetPackageExplorer
cinst -y NuGet.CommandLine
cinst -y curl
cinst -y debugdiagnostic
cinst -y ilspy
cinst -y mfcmapi
cinst -y nunit.install
cinst -y putty.portable
cinst -y python
cinst -y rainmeter
cinst -y RapidEE
cinst -y regexpixie
cinst -y ruby
cinst -y screentogif
cinst -y SQLite
cinst -y sqlite.shell
cinst -y sqlitebrowser
cinst -y TidyJson.portable
cinst -y windbg
cinst -y WindowsAzurePowershell
cinst -y vcredist2010
cinst -y wixtoolset

# Tools I Wrote
cinst -y ColorCat.portable
cinst -y LogStitcher.portable

# Blocking Installers (keep these last)
cinst -y markdownpad2
cinst -y truecrypt

################################################################
# Output of `clist -lo` on my home machine in 2015
################################################################
# beyondcompare 4.0.0.18847
# Brackets 1.1
# ChocolateyGUI 0.11.4
# clink.install 0.4.2
# pandoc 1.11.1
# trillian 5.5.0.17
# vlc 2.1.5.20140811
# WindowsLiveInstaller 2012.0.0

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
cinst -y  7zip.commandline
cinst -y sysinternals
cinst -y ditto
cinst -y filezilla

cinst -y slack

cinst -y winmerge
cinst -y mpc-hc
cinst -y dropbox
cinst -y git
cinst -y putty
cinst -y autohotkey.portable
cinst -y calibre

cinst -y boxstarter.chocolatey
cinst -y MicrosoftSecurityEssentials
cinst -y WinDirStat
cinst -y WindowsLiveWriter
cinst -y SourceTree
cinst -y autohotkey

cinst -y GnuWin
cinst -y nodejs.install
cinst -y npm
cinst -y mongodb

#Less important things near the bottom
cinst -y spotify
cinst -y picasa
cinst -y dependencywalker
cinst -y paint.net
cinst -y ScriptCs
cinst -y winmerge
cinst -y windowslivewriter
cinst -y  NugetPackageExplorer
cinst -y  curl
cinst -y  debugdiagnostic
cinst -y  ilspy
cinst -y  mfcmapi
cinst -y  nunit.install
cinst -y  putty.portable
cinst -y  python
cinst -y  rainmeter
cinst -y  RapidEE
cinst -y  regexpixie
cinst -y  ruby
cinst -y  screentogif
cinst -y  SQLite
cinst -y  sqlite.shell
cinst -y  sqlitebrowser
cinst -y  TidyJson.portable
cinst -y  windbg
cinst -y  windirstat
cinst -y  WindowsAzurePowershell
cinst -y  vcredist2010
cinst -y wixtoolset

# Tools I Wrote
cinst -y  ColorCat.portable
cinst -y  LogStitcher.portable

#Bigger things towards the end
#cinst -y AndroidStudio # I could never get this app to work
#cinst -y genymotion

# Blocking Installers (keep these last)
cinst -y markdownpad2
cinst -y truecrypt

################################################################
# Output of `clist -lo` on my home machine in 2015
################################################################
# 7zip 9.22.01.20130618
# 7zip.commandline 9.20.0.20130618
# 7zip.install 9.22.01.20130618
# AndroidStudio 0.3.2.132893413
# autohotkey 1.1.16.05
# autohotkey.install 1.1.16.05
# autohotkey.portable 1.1.16.05
# autoit.commandline 3.3.12.0
# beyondcompare 4.0.0.18847
# binroot 0.03
# Boxstarter.Bootstrapper 2.4.123
# Boxstarter.Chocolatey 2.4.123
# Boxstarter.Common 2.4.123
# Boxstarter.WinConfig 2.4.123
# Brackets 1.1
# calibre 2.9.0
# ChocolateyGUI 0.11.4
# clink.install 0.4.2
# cmder 1.1.4.100
# cmder.portable 1.1.4.100
# ctags 5.8.1
# dependencywalker 2.2.6000.6
# dropbox 2.10.50
# fiddler 2.4.9.6
# fiddler4 4.4.9.6
# filezilla 3.9.0.6
# Firefox 33.0.2
# git 1.9.4.20140929
# git.install 1.9.4.20140929
# GnuWin 0.6.3.1
# GoogleChrome 38.0.2125.111
# greenshot 1.1.9.13
# keepass 2.28.0.1
# keepass.install 2.28
# KickAssVim 7.4.0.00
# markdownpad2 2.3
# mongodb 2.4.7.1
# mpc-hc 1.7.7
# nodejs 0.10.36
# nodejs.commandline 0.10.36
# nodejs.install 0.10.36
# npm 1.4.9
# NuGet.CommandLine 2.5.0
# paint.net 4.0.3
# pandoc 1.11.1
# picasa 3.9.0.1
# PowerShell 4.0.20141001
# putty 0.63
# putty.portable 0.63
# scriptcs 0.13.0
# SourceTree 1.6.8
# spotify 0.9.8.296
# sysinternals 2014.09.11
# temp_BoxstarterPackage 1.0.0
# treesizefree 3.0.1
# trillian 5.5.0.17
# truecrypt 7.1.20140621
# vcredist2010 10.0.40219.1
# vim 7.4.27
# vlc 2.1.5.20140811
# which 1.0
# windirstat 1.1.2.20140225
# WindowsLiveInstaller 2012.0.0
# winmerge 2.14.0

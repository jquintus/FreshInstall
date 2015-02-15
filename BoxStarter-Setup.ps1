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

# Windows Options
Set-TaskbarOptions -size small -lock
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions
Enable-RemoteDesktop
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula -getUpdatesFromMS


# Must Have Toys
cinst GoogleChrome
cinst KickAssVim
cinst Firefox
cinst greenshot # Keep this before Dropbox to make sure we get the print screen hooks registered
cinst keepass
cinst cmder.portable
# cinst jquintus.ConEmuConfig #TO DO:  Make this work

# Big Toys
#cinst VisualStudio2013Ultimate Blend SQL Win8SDK WindowsPhone80 WebTools
#cinst xamarin-visualstudio
#cinst visualstudio2013-webessentials.vsix
#Install-ChocolateyVsixPackage CodeMaid http://visualstudiogallery.msdn.microsoft.com/76293c4d-8c16-4f4a-aee6-21f83a571496/file/9356/28/CodeMaid_v0.7.4.vsix
#Install-ChocolateyVsixPackage NunitTestAdapter http://visualstudiogallery.msdn.microsoft.com/6ab922d0-21c0-4f06-ab5f-4ecd1fe7175d/file/66177/15/NUnitVisualStudioTestAdapter-1.2.vsix
#Install-ChocolateyVsixPackage ProductifyPowerTools2013 http://visualstudiogallery.msdn.microsoft.com/dbcb8670-889e-4a54-a226-a48a15e4cace/file/117115/4/ProPowerTools.vsix
#Install-ChocolateyVsixPackage SlowCheetahXml http://visualstudiogallery.msdn.microsoft.com/69023d00-a4f9-4a34-a6cd-7e854ba318b5/file/55948/26/SlowCheetah.vsix
#Install-ChocolateyVsixPackage vsspellchecker http://visualstudiogallery.msdn.microsoft.com/a23de100-31a1-405c-b4b7-d6be40c3dfff/file/104494/5/VSSpellCheckerPackage.vsix
#Install-ChocolateyVsixPackage VSCommandsForVisualStudio http://visualstudiogallery.msdn.microsoft.com/c6d1c265-7007-405c-a68b-5606af238ece/file/106247/18/SquaredInfinity.VSCommands.VS12.vsix

# Less Important Toys
cinst fiddler4
cinst 7zip.install
cinst sysinternals
cinst ditto
cinst filezilla

cinst binroot

cinst winmerge
cinst mpc-hc
cinst dropbox
cinst git
cinst putty
cinst autohotkey.portable
cinst calibre

cinst boxstarter.chocolatey
cinst MicrosoftSecurityEssentials
cinst WinDirStat
cinst WindowsLiveWriter
cinst SourceTree
cinst autohotkey

#Less important things near the bottom
cinst spotify
cinst picasa
cinst dependencywalker
cinst paint.net
cinst ScriptCs
cinst winmerge


#Bigger things towards the end
#cinst AndroidStudio # I could never get this app to work
cinst genymotion


# Blocking Installers (keep these last)
cinst trillian
cinst markdownpad2
cinst truecrypt


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

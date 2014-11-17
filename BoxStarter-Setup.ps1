# To Run From Web:  http://boxstarter.org/package/nr/url?https://gist.githubusercontent.com/jquintus/00610923c715d9569258/raw/BoxsterSetup
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

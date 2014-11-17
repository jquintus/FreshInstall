# This script makes a copy of the current boot record and disables Hyper-V
# The next time the computer is restarted you can elect to run without Hyper-V
 
$output  = invoke-expression 'bcdedit /copy "{current}" /d "Hyper-V Disabled"'
$output -match '{.*}'
$guid = $matches[0]
$hyperVCommand = 'bcdedit /set "' + $guid + '" hypervisorlaunchtype off'
invoke-expression $hyperVCommand
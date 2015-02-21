$defaultComputerName = "Acer-S7"
$computerName = Read-Host -Prompt "Please Enter the computer name [$defaultComputerName]"
if ($computerName -eq '') { $computerName = $defaultComputerName}

Rename-Computer $computerName

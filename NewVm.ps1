Add-Type -AssemblyName System.Windows.Forms
Import-Module BitsTransfer

# clear
Clear-Host

# create folder for vm
$CurrentDirectory = $PSScriptRoot
$VmName = Read-Host -Prompt 'VM Name'
$VmPath = "$CurrentDirectory\$VmName"
If(!(test-path -PathType container $VmPath))
{
	New-Item -ItemType Directory -Path $VmPath
}

# slect base disk
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
	InitialDirectory = $CurrentDirectory
    Filter = 'Virtual Disk (*.vhdx)|*.vhdx'
}
$null = $FileBrowser.ShowDialog()
$BaseVhd = $FileBrowser.FileName

# copy base disk
$DiskName = 'Disk'
Start-BitsTransfer -Source "$BaseVhd" -Destination "$VmPath\$DiskName.vhdx" -DisplayName "Base Disk"

# create vm
New-VM `
-Name "$VmName" `
-BootDevice VHD `
-Generation 2 `
-MemoryStartupBytes 4096MB `
-Path "$CurrentDirectory" `
-SwitchName 'Default Switch'`
-VHDPath "$VmPath\$DiskName.vhdx"

# set processors
Set-VMProcessor "$VmName" -Count 4

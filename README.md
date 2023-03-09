# New VM

## Setup

### Dependencies

- Hyper-V must be available and active
- In Hyper-V a Virtual Switch Named "Default Switch" must exist
- (optional) GIT should be available in PowerShell

### Install

1. Open PowerShell
    1. Run `git clone https://gitlab.com/nikcani/new-vm.git`
    2. Run `cd new-vm`
2. (alternative) GUI Flow
    1. Download https://gitlab.com/nikcani/new-vm/-/archive/main/new-vm-main.zip
    2. Unzip archive
    3. Open folder
3. (optional) Move desired base drive (.vhdx) into the cloned/downloaded folder

### Use

1. Run `.\NewVm.ps1`
1. Open Hyper-v
1. Start & connect to fresh created VM
1. (optional) VPN
    1. Paste OVPN File from Host into VM folder that does not need admin privileges, e.g. the Desktop
    1. Move OVPN File inside the VM to `C:\Program Files\OpenVPN\config`
    1. Right click: Windows System Tray > OpenVPN GUI
    1. Connect > Enter Credentials

## Sources

- https://www.altaro.com/hyper-v/templating-virtual-machines-with-hyper-v-manager/
- https://www.altaro.com/hyper-v/how-to-create-import-virtual-machines/
- https://learn.microsoft.com/en-us/powershell/module/hyper-v/new-vm?view=windowsserver2019-ps

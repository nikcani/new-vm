# New VM

## Setup

### Dependencies
- Hyper-V must be available and active
- In Hyper-V a External Virtual Switch Named "Default Switch" must exist
- GIT must be available in PowerShell

### Install
1. Open PowerShell
1. Run `git clone https://gitlab.com/nikcani/new-vm.git`
1. Run `cd new-vm`
1. (optional) Move desired base image into

### Use
1. Run `.\NewVm.ps1`
1. Open Hyper-v
1. Start & connect to fresh created VM
1. (optional) VPN
    1. Paste OVPN File from Host into VM directory that does not need admin privileges, e.g. the Desktop
    1. Move OVPN File inside the VM to `C:\Program Files\OpenVPN\config`
    1. Right click: Windows System Tray > OpenVPN GUI
    1. Connect > Enter Credentials

## Sources
- https://www.altaro.com/hyper-v/templating-virtual-machines-with-hyper-v-manager/
- https://www.altaro.com/hyper-v/how-to-create-import-virtual-machines/
- https://learn.microsoft.com/en-us/powershell/module/hyper-v/new-vm?view=windowsserver2019-ps

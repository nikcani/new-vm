# Setup
## Dependencies
- Hyper-V must be available and active
- In Hyper-V a Virtual Switch Named "Default Switch" must exist
  - The switch should be of the type "external" so that you can access the network like the host machine can
- (optional) GIT should be available in PowerShell

## Install
### PowerShell
1. Open PowerShell
2. Go to your desired installation location
3. Run `git clone https://gitlab.com/nikcani/new-vm.git`

### GUI
1. Download https://gitlab.com/nikcani/new-vm/-/archive/main/new-vm-main.zip
2. Unzip new-vm-main.zip into your desired installation location

## Use (https://superuser.com/questions/106360/how-to-enable-execution-of-powershell-scripts)
1. Double-click NewVmAsAdmin
2. Specify unique VM Name and press Enter
3. Wait for the script to complete
4. Open Hyper-v
5. Start & connect to fresh created VM

### (optional & deprecated) VPN
1. Paste OVPN File from Host into VM folder that does not need admin privileges, e.g. the Desktop
2. Move OVPN File inside the VM to `C:\Program Files\OpenVPN\config`
3. Right click: Windows System Tray > OpenVPN GUI
4. Connect > Enter Credentials

# Possible future extensions
- https://github.com/dorssel/usbipd-win

# Sources
- https://www.altaro.com/hyper-v/templating-virtual-machines-with-hyper-v-manager/
- https://www.altaro.com/hyper-v/how-to-create-import-virtual-machines/
- https://learn.microsoft.com/en-us/powershell/module/hyper-v/new-vm?view=windowsserver2019-ps

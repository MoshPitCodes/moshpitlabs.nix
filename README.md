<h1 align="center">
   <img src="./.github/assets/logo/nixos-logo.png  " width="100px" /> 
   <br>
      My NixOS Configuration 
   <br>
      <img src="./.github/assets/pallet/pallet-0.png" width="800px" /> <br>

   <div align="center">
      <p></p>
      <div align="center">
         <a href="https://github.com/MoshPitCodes/moshpitlabs.nix/stargazers">
            <img src="https://img.shields.io/github/stars/MoshPitCodes/moshpitlabs.nix?color=FABD2F&labelColor=282828&style=for-the-badge&logo=starship&logoColor=FABD2F">
         </a>
         <a href="https://github.com/MoshPitCodes/moshpitlabs.nix/">
            <img src="https://img.shields.io/github/repo-size/MoshPitCodes/moshpitlabs.nix?color=B16286&labelColor=282828&style=for-the-badge&logo=github&logoColor=B16286">
         </a>
         <a href="https://nixos.org">
            <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=282828&logo=NixOS&logoColor=458588&color=458588">
         </a>
         <a href="https://github.com/MoshPitCodes/moshpitlabs.nix/blob/main/LICENSE">
            <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&colorA=282828&colorB=98971A&logo=unlicense&logoColor=98971A&"/>
         </a>
      </div>
      <br>
   </div>
</h1>

<br/>

# 🗃️ Overview

Hi, 

My name is Mosh and this is my personal NixOS system configuration. This is something I have been working on over the past couple of months while learning NixOS. I am using this as my daily driver on an ASUS Zenbook 14X OLED with the following hardware:

- Intel Core i9 13900H
- Intel XE Graphics
- 16GB DDR-5 RAM
- 3 external monitors
- USB Hub, docking station and peripherals like webcam, DAC, and more

Additionally, I'm using this on a desktop machine as a dual boot system for when I feel like it:
- Intel Core i7 13700K
- Nvidia RTX 4070Ti Super
- 64GB DDR-5 RAM
- 3 external monitors
- USB Hub, docking station and peripherals like webcam, DAC, and more

> [!WARNING]
> This is a heavily opinionated configuration that is likely not a great repository if you're just starting out with Linux or if you're trying to learn what NixOS is all about. The approach to building a modular, reusable and reproducible environment might not even align with best practices since I am not a NixOS expert by any stretch of the imagination. This is a personal project that is based on my experience in the NixOS ecosystem, information from the community and the wonderful open-source creators in the NixOS space. The setup is tailored to my specific needs and wants and will likely not provide a great baseline for you to build off of. Even though there are things packaged like the Steam client for gaming, this configuration is mainly used by myself as a proving ground and learning opportunity. Do not expect anything else. 

And now, let the fun begin!

<br/>

## 📚 Project Structure

-   [./flake.nix](flake.nix) Entry point to the configuration
-   [./hosts/](hosts) 🌳 Per-host configurations that contain machine specific setups
    - [../desktop/](hosts/desktop/) 🖥️ Specific configuration for desktop machines
    - [../laptop/](hosts/laptop/) 💻 Specific configuration for laptops
    - [../vm/](hosts/vm/) 🗄️ QEMU/KVM specific configuration (WIP)
    - [../vmware-guest/](hosts/vmware-guest/) 🗄️ VMWare Workstation/Player specific configuration (WIP)
-   [./modules/](modules) 🍱 Modularized NixOS configurations
    -   [../core/](modules/core/) ⚙️ Core NixOS configuration
    -   [../home/](modules/home/) 🏠 my [Home Manager](https://github.com/nix-community/home-manager) config
-   [./pkgs](flake/pkgs) 📦 Packages built from source
-   [./wallpapers](wallpapers/) 🌄 Wallpapers collection

<br/>

>[!TIP]
> If you open this ```README.md``` file in [VSCode][VSCode] or [VSCodium][VSCodium], you can ```Ctrl + LMB``` the links above. This will take you to the files in the editor.
> <br/>
> Recommended VSCode extension (pre-configured in this project): [Markdown All-in-One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

<br/>

## 📓 Project Components
| Use Case                                | Software                                                                                                |
| --------------------------------------- | :-------------------------------------------------------------------------------------------------------
| **Display Server Protocol**             | [Wayland][Wayland] |
| **Window Manager**                      | [Hyprland][Hyprland] |
| **Wallpaper Manager**                   | [Waypaper][Waypaper] + [Hyprpaper][Hyprpaper] |
| **Information Bar**                     | [Waybar][Waybar] |
| **Application Launcher**                | [rofi][rofi] |
| **Notification Daemon**                 | [swaync][swaync] |
| **Terminal Emulator**                   | [Ghostty][Ghostty] |
| **Shell**                               | [zsh][zsh] + [powerlevel10k][powerlevel10k] |
| **Text Editor**                         | [VSCodium][VSCodium] + [VSCode][VSCode] + [Neovim][Neovim] |
| **AI Editor**                           | [CursorAI][CursorAI] |
| **Network Management Tool**             | [NetworkManager][NetworkManager] + [network-manager-applet][network-manager-applet] |
| **System Resource Monitor**             | [Btop][Btop] |
| **File Manager**                        | [nemo][nemo] + [yazi][yazi] |
| **Fonts**                               | [Maple Mono][Maple Mono] |
| **Color Scheme**                        | [Gruvbox Dark Hard][Gruvbox] |
| **GTK Theme**                           | [Colloid GTK Theme][Colloid GTK Theme] |
| **Mouse Cursor Theme**                  | [Bibata-Modern-Ice][Bibata-Modern-Ice] |
| **Icon Theme**                          | [Papirus-Dark][Papirus-Dark] |
| **Lockscreen**                          | [Hyprlock][Hyprlock] + [Swaylock-effects][Swaylock-effects] |
| **Image Viewer**                        | [imv][imv] |
| **Screenshot Tool**                     | [grimblast][grimblast] |
| **Screen Recording Tool**               | [wf-recorder][wf-recorder] + [OBS][OBS] |
| **Media Player**                        | [mpv][mpv] |
| **Music Player**                        | [audacious][audacious] |
| **Clipboard Management**                | [wl-clip-persist][wl-clip-persist] |
| **Color Picker**                        | [hyprpicker][hyprpicker] |
| **DevOps Tools**                        | several tools like k8s, Docker, etc. |

<br/>

# 🚀 Installation 

> [!CAUTION]
> Customizing system configurations, particularly those affecting operating systems, may lead to unforeseen effects and potentially disrupt your system's standard operations. Although I've personally tested these settings on my own hardware, they might not perform identically on your specific setup. 
> **I cannot assume responsibility for any problems that might result from implementing this configuration.**

> [!WARNING]
> You **must** examine the configuration details and adjust them according to your specific requirements before proceeding with installation. Failing to do so will most definitely end up with a broken system installation for you. You have been warned!

<br/>

## 1. **Install NixOS**

First, install NixOS using an [official ISO image](https://nixos.org/download.html#nixos-iso). 
> [!NOTE]
> This was tested with the following parameters:
> - Graphical installer using the official GNOME ISO image
> - ```No desktop``` or ```GNOME``` option during installation
> - Intel 13th Gen hardware (especially relevant regarding iGPU/dGPU and chipset drivers)
> - VMWare Workstation or Player (v17+)

For now, this repository assumes an already installed NixOS system. I might end up putting this into configurable scripts specifically for remote installation on baremetal or virtual hosts. This is a nice-to-have for me currently and will not happen until I have the need to do so and the time to refactor a lot of stuff for my homelab.
<br/>

## 2. **Clone the repository**

```bash
nix-shell -p git
git clone https://github.com/MoshPitCodes/moshpitlabs.nix
cd moshpitlabs.nix
```

<br/>

## 3. **Install script**
> [!CAUTION]
> For some computers, the default rebuild command might get stuck. To fix that modify the install script line: ```sudo nixos-rebuild switch --flake .#${HOST}``` to ```sudo nixos-rebuild switch --cores <less than your max number of cores> --flake .#${HOST}```

> [!TIP]
> To ensure you understand what you're executing, it's advisable to review the script's contents or at minimum consult the [Install script walkthrough](#Install-script-walkthrough) section prior to running it.

For initial installation, using the install script is recommended. However, before executing this script, you should properly configure your NixOS installation. Begin by examining these key files:

### Configure monitors
Files: 
```./modules/home/hyprland/config.nix```

Run ```hyprctl monitors all``` to check for the identifiers / names of your monitors.

<br/>

### Configure wallpapers
Files: 
```./modules/home/waypaper.nix```
```./modules/home/hyprland/hyprpaper.nix```
```./modules/home/hyprland/hyprlock.nix```

<br/>

### Configure the Wi-Fi connection
Files:
```./modules/home/network.nix```

```nix
{
   wireless.networks = {
      "<SSID>" = { # replace with actual SSID
         psk = throw "<enter Wi-Fi password>"; # replace with actual password
      };
   };
}
```
<br/>

### Configure the Git account information
Files:
```./modules/home/git.nix```

```nix
{
   programs.git = {
      # Rest of the configuration

      # Remove 'throw' keyword, keep quotes
      userName = throw "<Enter user.name here (@ ./modules/home/git.nix)>";
      userEmail = throw "<Enter user.mail here (@ ./modules/home/git.nix)>";
   
      # Rest of the configuration
   };
}
```

<br/>

### Configure default username
Files: ```./install.sh```

```bash
init() {
    # Vars
    CURRENT_USERNAME='<username>'

    # rest of the configuration
}
```
<br/>

### Configure VSCode Extensions
Files:
```./modules/home/vscode.nix```

```nix
{
   # rest of the configuration

   profiles.default = {
      extensions = with pkgs.vscode-extensions; [
         # nix language
         jnoortheen.nix-ide

         # add more VSCode extensions
      ];   
   };
}
```

<br/>

### Set Aseprite Theme
Files:
```./modules/home/aseprite/themes```

<br/>

### Configure Audacious
Files: ```./modules/home/audacious.nix```

Change the directory for the Music folder, replace ```<username>``` with your username.
```text
[audgui]
filesel_path=/home/<username>/Music
```

<br/>

When you're happy with your configuration, execute and follow the installation script (**DO NOT** run as root)
```bash
./install.sh
```

<br/>

## 4. **Reboot**

After rebooting, the config should be applied and you should be greeted by hyprlock prompting for your password.

<br/>

## 5. **Manual configuration**

Even though this configuration uses Home Manager, there is still a little bit of manual configuration to do after the installation is completed:
- Configure the browser (e.g. extensions, account sync, etc.)
- Create or import SSH Keys (I hope to automate this in the future)
- Some other personal preferences, just dig around and see what you can find

<br/>

## A. Install script walkthrough

A brief walkthrough of what the install script does.

#### 1. **Get username**

You will receive a prompt to enter your username with a confirmation check.

#### 2. **Set username**

The script will replace all occurances of the default usename ```CURRENT_USERNAME``` by the given one stored in ```$username```

#### 3. Create basic directories

The following directories will be created:
- ```~/Music```
- ```~/Documents```
- ```~/Pictures/wallpapers/randomwallpaper```

#### 4. Copy the wallpapers

The wallpapers will be copied into ```~/Pictures/wallpapers/``` which is the folder in which the ```wallpaper-picker.sh``` script will be looking for them.

#### 5. Get the hardware configuration

It will also automatically copy the hardware configuration from ```/etc/nixos/hardware-configuration.nix``` to ```./hosts/${host}/hardware-configuration.nix``` so that the hardware configuration used is yours and not the default one.

#### 6. Choose a host (desktop / laptop)

Now you will need to choose the host you want. It depend on whether you are using a desktop or laptop (or a VM altho it can be really buggy).

#### 7. Choose whether to install Aseprite

To reduce installation time, you can choose to skip installing Aseprite. The installation process for Aseprite is time-intensive as it requires compiling over 1100 C++ files from source.

#### 8. Build the system

Lastly, it will build the system, which includes both the flake config and home-manager config.

<br/>

## 📝 Shell Aliases

<details>
<summary>
Utils (EXPAND)
</summary>

- ```c```     $\rightarrow$ ```clear```
- ```cd```    $\rightarrow$ ```z```
- ```tt```    $\rightarrow$ ```gtrash put```
- ```vim```   $\rightarrow$ ```nvim```
- ```cat```   $\rightarrow$ ```bat```
- ```nano```  $\rightarrow$ ```micro```
- ```code```  $\rightarrow$ ```codium```
- ```diff```  $\rightarrow$ ```delta --diff-so-fancy --side-by-side```
- ```less```  $\rightarrow$ ```bat```
- ```y```     $\rightarrow$ ```yazi```
- ```py```    $\rightarrow$ ```python```
- ```ipy```   $\rightarrow$ ```ipython```
- ```icat```  $\rightarrow$ ```kitten icat```
- ```dsize``` $\rightarrow$ ```du -hs```
- ```pdf```   $\rightarrow$ ```tdf```
- ```open```  $\rightarrow$ ```xdg-open```
- ```space``` $\rightarrow$ ```ncdu```
- ```man```   $\rightarrow$ ```BAT_THEME='default' batman```
- ```l```     $\rightarrow$ ```eza --icons  -a --group-directories-first -1```
- ```ll```    $\rightarrow$ ```eza --icons  -a --group-directories-first -1 --no-user --long```
- ```tree```  $\rightarrow$ ```eza --icons --tree --group-directories-first```
</details>

<details>
<summary>
NixOS (EXPAND)
</summary>

- ```cdnix```      $\rightarrow$ ```cd ~/moshpitlabs.nix && codium ~/moshpitlabs.nix```
- ```ns```         $\rightarrow$ ```nom-shell --run zsh```
- ```nix-test```   $\rightarrow$ ```nh os test```
- ```nix-switch``` $\rightarrow$ ```nh os switch```
- ```nix-update``` $\rightarrow$ ```nh os switch --update```
- ```nix-clean```  $\rightarrow$ ```nh clean all --keep 5```
- ```nix-search``` $\rightarrow$ ```nh search```
</details>

<details>
<summary>
Git (EXPAND)
</summary>

- ```g```     $\rightarrow$ ```lazygit```
- ```gf```    $\rightarrow$ ```onefetch --number-of-file-churns 0 --no-color-palette```
- ```ga```    $\rightarrow$ ```git add```
- ```gaa```   $\rightarrow$ ```git add --all```
- ```gs```    $\rightarrow$ ```git status```
- ```gb```    $\rightarrow$ ```git branch```
- ```gm```    $\rightarrow$ ```git merge```
- ```gd```    $\rightarrow$ ```git diff```
- ```gpl```   $\rightarrow$ ```git pull```
- ```gplo```  $\rightarrow$ ```git pull origin```
- ```gps```   $\rightarrow$ ```git push```
- ```gpso```  $\rightarrow$ ```git push origin```
- ```gpst```  $\rightarrow$ ```git push --follow-tags```
- ```gcl```   $\rightarrow$ ```git clone```
- ```gc```    $\rightarrow$ ```git commit```
- ```gcm```   $\rightarrow$ ```git commit -m```
- ```gcma```  $\rightarrow$ ```git add --all && git commit -m```
- ```gtag```  $\rightarrow$ ```git tag -ma```
- ```gch```   $\rightarrow$ ```git checkout```
- ```gchb```  $\rightarrow$ ```git checkout -b```
- ```glog```  $\rightarrow$ ```git log --oneline --decorate --graph```
- ```glol```  $\rightarrow$ ```git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'```
- ```glola``` $\rightarrow$ ```git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all```
- ```glols``` $\rightarrow$ ```git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat```
  
</details>

<br/>

## 🛠️ Scripts

All the scripts located in ```modules/home/scripts/scripts/``` are exported as packages in ```modules/home/scripts/default.nix```

<details>
<summary>
extract.sh 
</summary>

**Description:** Script for extracting ```tar.gz``` archives in the current directory.

**Usage:** ```extract <archive_file>```
</details>

<details>
<summary>
compress.sh 
</summary>

**Description:** Script for compressing a file or a folder into a ```tar.gz``` archive in the current directory with the name of the chosen file or folder. 

**Usage:** ```compress <file>``` or ```compress <folder>```
</details>

<details>
<summary>
toggle_blur.sh 
</summary>

**Description:** Script for toggling the Hyprland blur effect. If the blur is currently enabled, it will be disabled and vice versa.

**Usage:** ```toggle_blur```
</details>

<details>
<summary>
toggle_opacity.sh 
</summary>

**Description:** Script for toggling the Hyperland opacity effect. If the opacity is currently set to 0.90, it will be set to 1 and vice versa.

**Usage:** ```toggle_opacity```
</details>

<details>
<summary>
maxfetch.sh 
</summary>

**Description:** Modified version of the [jobcmax/maxfetch][maxfetch] script.

**Usage:** ```maxfetch```
</details>

<details>
<summary>
music.sh 
</summary>

**Description:** Script for managing Audacious (music player). If Audacious is currently running, it will be killed (stopping the music); otherwise, it will start Audacious in the 8th workspace and resume the music. 

**Usage:** ```music```
</details>

<details>
<summary>
runbg.sh 
</summary>

**Description:** Script for running a provided command along with its arguments and detaching it from the terminal. Handy for launching apps from the command line without blocking it. 

**Usage:** ```runbg <command> <arg1> <arg2> <...>```
</details>

<br/>

## ⌨️ Keybinds

You can view all keybinds by pressing ```$mainMod F1``` and the wallpaper picker by pressing ```$mainMod w```. By default, ```$mainMod``` is the ```SUPER``` key. 

<br/>

## 🖼️ Gallery

<p align="center">
   <img src="./.github/assets/screenshots/system-usage.png" style="margin-bottom: 15px;"/> <br>
   Screenshots last updated <b>2025-03-25</b>
</p>

<br/>

# 👥 Credits

Resources that have inspired me greatly:

- NixOS & Flakes
  - [alt-f4-llc/kickstart.nix](https://github.com/ALT-F4-LLC/kickstart.nix): Forever grateful for BG and the crew!
  - [alt-f4-llc/dotfiles.nix](https://github.com/ALT-F4-LLC/dotfiles.nix): Well, what can I say \o/
  - [mitchellh/nixos-config](https://github.com/mitchellh/nixos-config): The man himself!
  - [frost-phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config/tree/catppuccin): General flake / files structure
  - [fufexan/dotfiles](https://github.com/fufexan/dotfiles)
  - [tluijken/.dotfiles](https://github.com/tluijken/.dotfiles): Base rofi config
  - [mrh/dotfiles](https://codeberg.org/mrh/dotfiles): Base Waybar config

- README
  - [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)
  - [notashelf/nyx](https://github.com/NotAShelf/nyx)
  - [sioodmy/dotfiles](https://github.com/sioodmy/dotfiles)
  - [ruixi-rebirth/flakes](https://github.com/Ruixi-rebirth/flakes)
  - [My Nix Journey](https://tech.aufomm.com/my-nix-journey-use-nix-with-ubuntu/)

- Official Resources
  - [NixOS Homepage](https://nixos.org/)
  - [NixOS Manual](https://nixos.org/manual/nixos/stable/)
  - [NixOS Flakes](https://wiki.nixos.org/wiki/Flakes)
  - [NixOS Download](https://nixos.org/download/#nixos-iso)
  - [nixpkgs](https://github.com/NixOS/nixpkgs)
  - [Home Manager Manual](https://nix-community.github.io/home-manager/)

<br/>
<!-- # ✨ Stars History -->
<br/>

<p align="center"><img src="https://api.star-history.com/svg?repos=MoshPitCodes/moshpitlabs.nix&type=Timeline&theme=dark" /></p>

<br/>

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>

<!-- end of page, send back to the top -->
<div align="right">
  <a href="#readme">Back to Top</a>
</div>

<!-- Links -->
[audacious]: https://audacious-media-player.org/
[Bibata-Modern-Ice]: https://www.gnome-look.org/p/1197198
[Btop]: https://github.com/aristocratos/btop
[Colloid GTK Theme]: https://github.com/vinceliuice/Colloid-gtk-theme
[CursorAI]: https://www.cursor.com/ 
[Ghostty]: https://ghostty.org/
[grimblast]: https://github.com/hyprwm/contrib
[Gruvbox]: https://github.com/morhetz/gruvbox
[Hyprland]: https://github.com/hyprwm/Hyprland
[Hyprlock]: https://github.com/hyprwm/hyprlock
[Hyprpaper]: https://github.com/hyprwm/hyprpaper
[hyprpicker]: https://github.com/hyprwm/hyprpicker
[imv]: https://sr.ht/~exec64/imv/
[Maple Mono]: https://github.com/subframe7536/maple-font
[maxfetch]: https://github.com/jobcmax/maxfetch
[mpv]: https://github.com/mpv-player/mpv
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[network-manager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet/
[nemo]: https://github.com/linuxmint/nemo/
[Neovim]: https://github.com/neovim/neovim
[OBS]: https://obsproject.com/
[powerlevel10k]: https://github.com/romkatv/powerlevel10k
[Papirus-Dark]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[rofi]: https://github.com/lbonn/rofi
[Swaylock-effects]: https://github.com/mortie/swaylock-effects
[swaync]: https://github.com/ErikReider/SwayNotificationCenter
[VSCode]: https://code.visualstudio.com/
[VSCodium]:https://vscodium.com/
[Waybar]: https://github.com/Alexays/Waybar
[Wayland]: https://wayland.freedesktop.org/
[Waypaper]:https://github.com/anufrievroman/waypaper
[wf-recorder]: https://github.com/ammen99/wf-recorder
[wl-clip-persist]: https://github.com/Linus789/wl-clip-persist
[yazi]: https://github.com/sxyazi/yazi
[zsh]: https://ohmyz.sh/

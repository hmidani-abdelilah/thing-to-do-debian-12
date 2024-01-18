```bash
apt update -y && sudo apt full-upgrade -y
```

* add contrib non-free non-free-firmware :

```bash
nano /etc/apt/sources.list
```

* file `sources.list` :

***

> #deb cdrom:[Debian GNU/Linux testing _Trixie_ - Official Snapshot amd64 DVD Binary-1 with firmware 20231225-03:16]/ trixie main non-free-firmware
>
> deb http://deb.debian.org/debian/ trixie main contrib non-free non-free-firmware
> 
> deb-src http://deb.debian.org/debian/ trixie main non-free-firmware
> 
> deb http://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
> 
> deb-src http://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
>
> #trixie-updates, to get updates before a point release is made;
> 
> #see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
> 
> deb http://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware
> 
> deb-src http://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware

***

* update system

```bash
sudo apt update -y && sudo apt full-upgrade -y
```

* install Wi-Fi Drivers..... non free 

```bash 
apt install firmware-iwlwifi firmware-misc-nonfree
```

* **wpa-supplicant** is a userspace daemon handling connection and authentication
in wireless and wired networks.
```bash 
apt install wpasupplicant
```

* **add user to sudo**
  
 * * change abdelilah by user
   
  * - user this command :
  
```bash
usermod -aG abdelilah sudo
```

* - or this command :

```bash
gpasswd -a abdelilah sudo
```

* add this line in file [**sudores**](https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file-fr)
  
```bash 
nano /etc/sudoers
```

***
> abdelilah ALL=(ALL:ALL) ALL
***

```bash 
su abdelilah
```

* add **/usr/sbin** to **PATH**

```bash 
export PATH="/usr/sbin/:$PATH"
``` 

```bash 
echo  PATH="/usr/sbin/:$PATH" > .bashrc
```

* install essential package :
>> Dynamic Kernel Module System and linux-headers
>> * DKMS is a framework designed to allow individual kernel modules to be upgraded
without changing the whole kernel. It is also very easy to rebuild modules as
you upgrade kernels.
>> * linux-headers This package provides the architecture-specific kernel header files for
Linux kernel , generally used for building out-of-tree kernel
modules.  These files are going to be installed into


```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```
* install file archiver and microsoft fonts and media codecs :
  
```bash
sudo apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi
```
* Carlito is metric-compatible with Calibri font and Caladea is metric-compatible with the Cambria font.
  
```bash
sudo apt install fonts-crosextra-carlito fonts-crosextra-caladea
```
* install flatpack and snapd and extension:
```bash 
sudo apt install gnome-shell-extension-manager snapd gnome-software-plugin-snap flatpak gnome-software-plugin-flatpak  -y
```

```bash 
 sudo apt install gnome-tweaks
```

* add repo flathub

```bash 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

* correct processor behavior:
  
| Intel CPU |  AMD CPU |
|--|--|
| `sudo apt install intel-microcode iucode-tool -y` | `sudo apt install amd64-microcode -y` |


* Uncomplicated FireWall is a front-end for iptables:
  
```bash 
sudo apt install ufw -y
```

```bash 
sudo ufw enable
```

```bash
sudo ufw default deny incoming
```

```bash
sudo ufw default allow outgoing
```

```bash
sudo ufw allow ssh
```
* graphical user interface for ufw:
  
```bash
sudo apt install gufw gir1.2-javascriptcoregtk-4.0 gir1.2-soup-2.4 gir1.2-webkit2-4.0 libsoup-gnome2.4-1 libwebkit2gtk-4.0-37
```
* install some softwares :
  
```bash
sudo apt install gparted gimp inkscape ffmpeg default-jdk git wget nano vim htop locate p7zip p7zip-full unzip rar unrar libavcodec-extra curl -y
``` 
* install google chrome:
  
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```

```bash
sudo dpgk -i google-chrome-stable_current_amd64.deb
```

```bash 
sudo apt --fix-broken install
```
* set correct time zone:
  
```bash 
sudo timedatectl list-timezones
```

```bash 
sudo timedatectl set-timezone Africa/Casablanca
```
* enable network time protocole :
  
```bash 
sudo timedatectl set-ntp yes
```

```bash 
sudo timedatectl set-timezone Africa/Casablanca --adjust-system-clock
```
* install libs Dependence of some software clipboard:
   
```bash 
sudo apt install gir1.2-gda-5.0 gir1.2-gsound-1.0 -y
```
* install support langs of libreoffice :
* 
```bash 
sudo apt install libreoffice-l10n-ar libreoffice-l10n-fr -y
```
* install java jdk - Java Development Kit (JDK) :

```bash 
sudo apt install default-jdk -y
```
* install java jre - Java Development Kit (JDK) - ava Virtual Machine (JVM):
  
```bash 
sudo apt install default-jre -y
```
* install Java support for LibreOffice (Java classes, scripts, config snippets).
```bash 
sudo apt install libreoffice-java-common
```

## Configure Swappiness
 * * Decreasing swappiness value is one of the best ways to improve the performance of your system. This forces your Linux system to use RAM, instead of the hard drive. For those of you unfamiliar with Linux swap, check out our post on Linux swap.

* Check the current swappiness value by executing:

```bash
cat /proc/sys/vm/swappiness # 60 (default)
```

* Open /etc/sysctl.conf file as an administrator:

```bash
sudo nano /etc/sysctl.conf
```
>> At the end of the file, add vm.swappiness=10 which will reduce swap usage.
>>
>>Press `CTRL + O` to save changes and `CTRL + X` to exit the nano editor.

**Now reboot your system for the change to take effect.**


 -- ***this optional packages*** :

```bash 
sudo apt install ant ant-optional auto-multiple-choice-doc-pdf firebird3.0-common firebird3.0-common-doc firebird3.0-server-core firebird3.0-utils fonts-crosextra-caladea fonts-crosextra-carlito fonts-linuxlibertine fonts-noto-core fonts-noto-extra fonts-noto-ui-core fonts-sil-gentium fonts-sil-gentium-basic hyphen-fr java-wrappers libaccessodf-java libactivation-java libapache-pom-java libandroid-json-java libbase-java libbatik-java libbcmail-java libbcpkix-java libbcprov-java libbcutil-java libbsh-java libcommons-cli-java libcommons-collections3-java libcommons-io-java libcommons-logging-java libcommons-parent-java libehcache-java libel-api-java libfbclient2 libflute-java libfonts-java libformula-java libhsqldb1.8.0-java libib-util libitext-java libjaxb-api-java libjaxp1.3-java libjcommon-java libjodconverter-java libjodconverter-java-doc libjsp-api-java liblayout-java libloader-java libmail-java libmariadb3 libofficebean-java libpentaho-reporting-flow-engine-java libpixie-java libpq5 libreoffice libreoffice-base libreoffice-base-drivers libreoffice-gtk4 libreoffice-help-fr libreoffice-nlpsolver libreoffice-report-builder libreoffice-report-builder-bin libreoffice-script-provider-bsh libreoffice-script-provider-js libreoffice-script-provider-python libreoffice-sdbc-firebird libreoffice-sdbc-hsqldb libreoffice-sdbc-mysql libreoffice-sdbc-postgresql libreoffice-uiconfig-base libreoffice-uiconfig-report-builder libreoffice-wiki-publisher librepository-java libsac-java libserializer-java libservlet-api-java libservlet3.1-java libslf4j-java libtommath1 libwebsocket-api-java libwriter2latex-java libwriter2latex-java-doc libxalan2-java libxerces2-java libxml-commons-external-java libxml-commons-resolver1.1-java libxml-java libxmlgraphics-commons-java libxpp3-java libxstream-java mariadb-common mysql-common mythes-fr tex-common -y
``` 


* **reboot your system**
  
```bash 
sudo reboot
```
* update system:

```bash
sudo apt update -y && sudo apt full-upgrade -y && flatpack update && flatpak uninstall --unused
```
*  hardware health monitoring package for Linux.
  
```bash
sudo apt install lm-sensors -y
```
* opestional fancontrol:
```bash
sudo apt install fancontrol
```
* preload monitors applications that users run, and by analyzing this
data, predicts what applications users might run, and fetches those
binaries and their dependencies into memory for faster startup times.

```bash
sudo apt install preload -y
```
* man nice, how to use commans:
  
```bash
sudo apt install tldr
```

```bash
sudo apt install nmon lolcat locate lsd vim-nox ccze
```

```bash
sudo apt install tzdata-legacy
```

**if use laptop install this package** :

```bash
sudo apt install tlp tlp-rdw acpitool laptop-mode-tools -y
```

* **samba** :

```bash
sudo apt install samba -y
```

```bash
testparm
```
* to support windows :
```bash
sudo apt install cifs-utils samba-client -y
```
*  to clean system:

```bash
sudo apt install bleachbit
```
* install some package with flatpack and install package manager of appimage applications :
  
```bash
flatpak install bottles sticky appimagepool flatseal -y
```

* add spelling cheack to libreffice :
  ```
  wget  https://languagetool.org/download/LanguageTool-stable.oxt
  ```
  
  * Open LibreOffice and go to Tools ▸ Extension Manager ...
  * In Extension Manager dialog, click Add....
  * In the Add Extension(s) dialogue, find the extension file for LibreOffice (OXT file type).
  * Select the extension and click Open to begin installation.
  * To complete the procedure, click Close and close LibreOffice
  * The next time you open LibreOffice, the extension should be ready for use.
  * **this article to help**
  * https://discourse.aosus.org/t/topic/2300/4
  * https://discourse.aosus.org/t/topic/2783/3

* extenssion of gnome :

  ![enter image description here](https://github.com/hmidani-abdelilah/thing-to-do-debian-12/blob/main/screencapture-extensions-gnome-org.png)

* this article to enable backports repo or experimental :
  
-- [Add backpots repo or experimental](https://www.linuxcapable.com/how-to-install-backports-experimental-repository-on-debian/)

> To enable the experimental repository, follow these steps:

* open the  `sources.list`  configuration file by running the following command:
  
````bash
sudo nano /etc/apt/sources.list
````

* Add the following lines at the end of the file after the lines you previously added for the **backports** repository:

```bash 
deb http://deb.debian.org/debian experimental main contrib non-free 
deb-src http://deb.debian.org/debian experimental main contrib non-free
```

* Save the configuration file by pressing  `CTRL+O`, and then exit with  `CTRL+X`.

* Update the repository list by running the following command:
* 
```bash 
sudo  apt update
```

Now, you can use the  `-t`  flag with the  `experimental`  keyword in your commands to search and install packages from the experimental repository.

***
### Searching for Packages in the Experimental Repository
****
Use the following command to search for packages in the experimental repository, replacing  `"package-name"`  with the desired package name:

```bash
sudo  apt search "package-name" -t experimental
```
****
### Installing Packages from the Experimental Repository
***
Use the following command to install packages from the experimental repository, replacing  `"package-name"`  with the desired package name:

```bash
sudo  apt  install  "package-name" -t experimental
```
## Tesseract OCR

```bash
sudo apt install tesseract-ocr
```

```bash
sudo apt install tesseract-ocr-ara
```
```bash
sudo apt install tesseract-ocr-fra
```

```bash
sudo apt install tesseract-ocr-script-arab
```
```bash
sudo apt install tesseract-ocr-script-frak
```

* Arabic only - اللغة العربية فقط

```bash
tesseract -l ara image.png text
```
* English only - اللغة الإنجليزية فقط

```bash
tesseract -l eng image.png text
```
* Arabic and English - العربية والإنجليزية معًا

```bash
tesseract -l ara+eng image.png text
```
## ZRAM
* Install:
  
```bash
sudo apt install zram-tools
```

* Configure it to allow up to 60% of the RAM to be used as a zstd compressed swap space:
  
```bash
echo -e "ALGO=zstd\nPERCENT=70" | sudo tee -a /etc/default/zramswap
```
>>I set it to 80%
* Restart the service :
  
```bash
sudo service zramswap reload
```
## ZSH

```bash
sudo apt update && sudo apt upgrade -y
```
* Install Packages⚓︎

```bash
sudo apt install zsh ranger git wget
```
* Create the Folders⚓︎

```bash
mkdir -p ~/.config/zsh/plugins && mkdir -p ~/.cache/zsh
```
* Move '.zshrc' file to '$HOME/.config/zsh'⚓︎

```bash
echo -e '\n\n# zsh\nexport ZDOTDIR="$HOME/.config/zsh"' >> ~/.profile
```
* Download Fonts⚓︎
  
```bash
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ./MesloLGS-NF
```

```bash
sudo mv MesloLGS-NF /usr/share/fonts
```
* * Close and reopen the terminal

* LOGOUT and LOGIN⚓︎ 

```bash
zsh
```
* Download Plugins⚓︎

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/zsh/plugins/autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/syntax-highlighting && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/plugins/powerlevel10k
```
* Install Plugins⚓︎

```bash
echo -e '\n\n# Plugins\nsource ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme\nsource ~/.config/zsh/plugins/autosuggestions/zsh-autosuggestions.zsh\nsource ~/.config/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.config/zsh/.zshrc
```
* 
```bash
echo -e '\n\n# Plugins\nsource ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme\nsource ~/.config/zsh/plugins/autosuggestions/zsh-autosuggestions.zsh\nsource ~/.config/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.config/zsh/.zshrc
```
### ZSH as the default shell⚓︎

* for `root`
```bash
sudo -s
```

```bash
chsh -s /bin/zsh root
```
```bash
exit
```
* for `user`
```bash
chsh -s /bin/zsh $USER
```
* LOGOUT and LOGIN⚓︎
* Open the Terminal and Configure it⚓︎

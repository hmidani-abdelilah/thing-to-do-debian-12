`apt update -y && sudo apt full-upgrade -y`

*

`nano /etc/apt/sources.list`

*
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

`sudo apt update -y && sudo apt full-upgrade -y`

*

`apt install firmware-iwlwifi firmware-misc-nonfree`

*

`apt install wpasupplicant`

* **add user to sudo**
 * change abdelilah by user
  -- user this command :
`usermod -aG abdelilah sudo`
-- or this command :
`gpasswd -a abdelilah sudo`
* add this line in file **sudores**
`nano /etc/sudoers`
***
abdelilah ALL=(ALL:ALL) ALL
***
`su abdelilah`

* add **/usr/sbin** to **PATH**

`export PATH="/usr/sbin/:$PATH"` 

`echo  PATH="/usr/sbin/:$PATH" > .bashrc`

* install essential package :

`sudo apt install build-essential gnome-shell-extension-manager flatpak gnome-software-plugin-flatpak gnome-software-plugin-snap snapd -y` 

* add repo flathub

`flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`

 `sudo apt install gnome-tweaks`

`sudo apt install ufw -y`

`sudo ufw enable`

`sudo ufw default deny incoming`

`sudo ufw default allow outgoing`

`sudo ufw allow ssh`

`sudo apt install gufw gir1.2-javascriptcoregtk-4.0 gir1.2-soup-2.4 gir1.2-webkit2-4.0 libsoup-gnome2.4-1 libwebkit2gtk-4.0-37`

`sudo apt install gparted gimp inkscape ffmpeg default-jdk git wget nano vim htop locate p7zip p7zip-full unzip rar unrar libavcodec-extra -y` 

`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`

`sudo dpgk -i google-chrome-stable_current_amd64.deb`

`sudo apt --fix-broken install`

`sudo timedatectl list-timezones`

`sudo timedatectl set-timezone Africa/Casablanca`

`sudo timedatectl set-ntp yes`

`sudo timedatectl set-timezone Africa/Casablanca --adjust-system-clock`


`sudo apt install gir1.2-gda-5.0 gir1.2-gsound-1.0 -y`

`sudo apt install libreoffice-l10n-ar libreoffice-l10n-fr -y`

`sudo apt install default-jdk -y`

`sudo apt install default-jre -y`

`sudo apt install libreoffice-java-common`


-- this optional packages :

`sudo apt install ant ant-optional auto-multiple-choice-doc-pdf firebird3.0-common firebird3.0-common-doc firebird3.0-server-core firebird3.0-utils fonts-crosextra-caladea fonts-crosextra-carlito fonts-linuxlibertine fonts-noto-core fonts-noto-extra fonts-noto-ui-core fonts-sil-gentium fonts-sil-gentium-basic hyphen-fr java-wrappers libaccessodf-java libactivation-java libapache-pom-java libandroid-json-java libbase-java libbatik-java libbcmail-java libbcpkix-java libbcprov-java libbcutil-java libbsh-java libcommons-cli-java libcommons-collections3-java libcommons-io-java libcommons-logging-java libcommons-parent-java libehcache-java libel-api-java libfbclient2 libflute-java libfonts-java libformula-java libhsqldb1.8.0-java libib-util libitext-java libjaxb-api-java libjaxp1.3-java libjcommon-java libjodconverter-java libjodconverter-java-doc libjsp-api-java liblayout-java libloader-java libmail-java libmariadb3 libofficebean-java libpentaho-reporting-flow-engine-java libpixie-java libpq5 libreoffice libreoffice-base libreoffice-base-drivers libreoffice-gtk4 libreoffice-help-fr libreoffice-nlpsolver libreoffice-report-builder libreoffice-report-builder-bin libreoffice-script-provider-bsh libreoffice-script-provider-js libreoffice-script-provider-python libreoffice-sdbc-firebird libreoffice-sdbc-hsqldb libreoffice-sdbc-mysql libreoffice-sdbc-postgresql libreoffice-uiconfig-base libreoffice-uiconfig-report-builder libreoffice-wiki-publisher librepository-java libsac-java libserializer-java libservlet-api-java libservlet3.1-java libslf4j-java libtommath1 libwebsocket-api-java libwriter2latex-java libwriter2latex-java-doc libxalan2-java libxerces2-java libxml-commons-external-java libxml-commons-resolver1.1-java libxml-java libxmlgraphics-commons-java libxpp3-java libxstream-java mariadb-common mysql-common mythes-fr tex-common -y` 


* **reboot your system**
  
`sudo reboot`

`sudo apt update -y && sudo apt full-upgrade -y && flatpack update && flatpak uninstall --unused`
`sudo apt install lm-sensors -y`
`sudo apt install preload -y`
`sudo apt install tldr`
`sudo apt install nmon lolcat locate lsd vim-nox ccze`
`sudo apt install tzdata-legacy`

* **samba ** :

`sudo apt install samba -y`
`testparm`
`sudo apt install cifs-utils samba-client -y`

`flatpak install bottles sticky appimagepool flatseal -y`

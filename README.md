linux-distros-setup
===================

I'm a distro junkie and usually have 4 bootable distros and one or two in the vm on my computers - including the raspberry pi. These scripts and my structure allow me to get a distro up and running in about and hour with minimal impact to my workflow and no loss of data. 

__assumes the [dotfiles/setup](https://github.com/rballen/dotfiles) has been run__

git clone https://github.com/rballen/linux-distros-setup.git

## arch
setup for arch based distros


    
## common
install scripts for distro independant apps like ruby, gems, nodejs, etc

## config
config scripts per application

## raspberry-pi(debian hard float)
my super wonderful nodejs, nginx, php, jekyll, ruby, Sass and gitolite git repo machine


## scripts
various scripts - mostly from other  good developers

## ubuntu
setup for debian/ubuntu family

## boot
use grub-customizer to set --> general settings --> kernel parameters    
`quiet splash acpi_osi=Linux acpi_backlight=vendor i915.semaphores=1 elevator=noop`

### custom boot image
```sh
cd /usr/share/images
sudo wget http://files.robuntu.com/themes/grub_buddha.png
```
use grub-customizer --> Apperance Settings - to set background image    

### custom boot sound
```sh
mkdir -p ~/.sound && cd ~/.sound
wget http://files.robuntu.com/themes/om.ogg
# for xfce (voyager) i modify ~/.config/autostart/Son start.desktop
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=Son start
Comment=
Exec=play ~/.sound/om.ogg
StartupNotify=false
Terminal=false
Hidden=false

```
and finally make sure Indicator Sound is checked under Settings --> Session and Startup --> Application autostart

### todo
- [ ] give brief summary of partitions and linking for data and resources
- [ ] add conky
- [ ] finish consoladating scripts and mark ready for use

linux-distros-setup
===================

I'm a distro junkie and usually have 4 bootable distros and one or two in the vm on my computers - including the raspberry pi. These scripts and my structure allow me to get a distro up and running in about and hour with minimal impact to my workflow and no loss of data. 

__assumes the [dotfiles/setup](https://github.com/rballen/dotfiles) has been run__

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

## kernel parameters
use grub-customizer and pass the following:   
`quiet splash acpi_osi=Linux acpi_backlight=vendor i915.semaphores=1 elevator=noop`



### todo
- [ ] give brief summary of partitions and linking for data and resources
- [ ] add conky
- [ ] finish consoladating scripts and mark ready for use

#!/bin/bash

sudo pacman -S ghidra

sudo pacman -S gdb

sudo pacman -S pwndbg
echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit

sudo pacman -S radare2

sudo pacman -S hexedit

sudo pacman -S python-pip

sudo pacman -S yay

yay -S notion-desktop

git cone https://github.com/12bijaya/install_qemu_in_arch.git
cd install_qemu_in_arch
chmod u+x automated_install.sh
./automated_install.sh
cd ..
rm -rf install_qemu_in_arch

mkdir ~/Documents/tools 
cd ~/Documents/tools/ '
cd -
git clone https://github.com/0x7375646F/Softwarica-Gateway-AutoLogin
cd ~/Documents/tools/Softwarica-Gateway-AutoLogin/ 
rm -f README.md run.sh
a=$PWD/main.py
echo "alias connect='python3 '$a" >> ~/.zshrc
echo "alias connect=''python3 '$a" >> ~/.bashrc
echo 'Use connect to connect the softwarica ko wifi '
sleep 2 

cd - 
cd ~/.config/bspwm/rices/marisol/
rm -f Bar.bash modules.ini config.ini 
cp ../Bar.bash .; cp ../config.ini .; cp ../modules.ini .
cd - 

yay -S postman

sudo touch /etc/X11/xorg.conf.d/30-touchpad.conf
sudo echo 'Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    Option "NaturalScrolling" "True"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
EndSection' > /etc/X11/xorg.conf.d/30-touchpad.conf

sudo pacman -S wireshark-qt
sudo pacman -S wireshark-cli
sudo usermod -aG wireshark $USER
sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap

yay -S ffuf

yay -S feroxbuster

cd ~/Documents/tools/ 


yay -S zbar 
cd - 

python3 -m venv ~/Documents/lab

cd ~/Documents/lab/bin
a=$PWD/activate
echo "alias lab='source '$a" >> ~/.zshrc
echo "alias lab='source '$a" >> ~/.bashrc
source $a 
pip install pwntools
pip install --upgrade pip
pip install ROPGadget
deactivate
cd - 

cd ~/Documents/tools/
git clone https://aur.archlinux.org/packettracer.git
cd - 
cd ~/Downloads/tools/packettracer
wget "https://www.dropbox.com/scl/fi/xriij5pfwe4se6gdhk0q5/Packet_Tracer822_amd64_signed.deb?rlkey=m9itbgvo6hdlh5xc42vc7fvof&st=n56dmgbp&dl=0"
mv "Packet_Tracer822_amd64_signed.deb?rlkey=m9itbgvo6hdlh5xc42vc7fvof&st=n56dmgbp&dl=0" Packet_Tracer822_amd64_signed.deb 
makepkg -si 
cd - 


yay -S codium



yay -S fastfetch

cd ~/Documents/tools/ 
git clone https://github.com/xiv3r/Burpsuite-Professional.git
cd -
cd ~/Documents/tools/Burpsuite-Professional 
rm -f install.sh update.sh 
wget "https://www.dropbox.com/scl/fi/1ii5mfig9s6thv8qjjobu/install.sh?rlkey=pr47xtajsujpr3bz2j11a5lly&st=p6ypvbxv&dl=0"
mv "install.sh?rlkey=pr47xtajsujpr3bz2j11a5lly&st=p6ypvbxv&dl=0" install.sh
chmod +x install.sh 
wget "https://www.dropbox.com/scl/fi/0t0esqmev1a6dlehqr5dw/update.sh?rlkey=p1vw4dl12h64dapkgckk7yz8g&st=x53yn8iv&dl=0"
mv "update.sh?rlkey=p1vw4dl12h64dapkgckk7yz8g&st=x53yn8iv&dl=0" update.sh
chmod +x update.sh 
./install.sh 
cd - 

yay -S openssh

yay -S net-tools

yay -S docker
systemctl enable docker
systemctl start docker 
sudo chmod u+s $(which docker)
docker run --name mysql-dev \
  -e MYSQL_ROOT_PASSWORD=babe \
  -e MYSQL_DATABASE=project_alpha_db \
  -e MYSQL_USER=obito \
  -e MYSQL_PASSWORD=babe \
  -p 3306:3306 \
  -d mysql
echo "your my sql has 1 user named obito and password is babe for both obito and babe"
echo "mysql -h localhost -P 3306 -u [obito|root] -P "
sleep 1 

yay -S visual-paradigm

yay -S visual-paradigm
yay -S bluez
yay -S blueman

reboot 

sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S --needed base-devel
sudo pacman -S git 
sudo pacman -S npm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd

# change color shell prompt
echo "" > ~/.bashrc
echo "[[ $- != *i* ]] && return" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "alias ls='ls --color=auto'" >> ~/.bashrc
echo "_Cyan=$(tput setaf 6)" >> ~/.bashrc
echo "_Red=$(tput setaf 1)" >> ~/.bashrc
echo "_RESET=$(tput sgr0)" >> ~/.bashrc
echo "_BOLD=$(tput bold)" >> ~/.bashrc
echo "export PS1="${_Cyan}${_BOLD}\t${_Red}@${_Cyan}\u${_Red}@${_Cyan}\h${_Red}@${_Cyan}\W >> ${_RESET}"" >> ~/.bashrc
#echo "export PS1="${_Cyan}${_BOLD}\t${_Red}@${_Cyan}\u${_Red}@${_Cyan}\h${_Red}@${_Cyan}\$PWD >> ${_RESET}"" >> ~/.bashrc

# neofetch
sudo pacman -S neofetch
neofetch
sudo wget https://raw.githubusercontent.com/neko941/BALOS/main/config.conf -O ./.config/neofetch/config.conf
echo "" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc

# transpent terminal
git clone https://aur.archlinux.org/gnome-terminal-transparency.git 
cd gnome-terminal-transparency
makepkg -si
cd

# add curors
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme/cursors
sudo ./install.sh
sudo ./build.sh
cd ~
git clone https://github.com/alvatip/Neonly
cd Neonly
sudo ./install.sh
cd
git clone https://github.com/alvatip/Nordzy-cursors
cd Nordzy-cursors
sudo ./install.sh
cd
git clone https://github.com/alvatip/Borealis-cursors
cd Borealis-cursors
sudo ./install.sh
cd
git clone https://github.com/alvatip/Sunity-cursors
cd Sunity-cursors
sudo ./install.sh
cd

# add icons
cd /usr/share/icons
sudo wget https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip -O candy-icons-master.zip
sudo rm -rf candy-icons-master.zip
cd ~

# add themes
sudo pacman -S gtk-engines
sudo pacman -S gtk-engine-murrine
sudo pacman -S ninja
sudo pacman -S meson
sudo pacman -S sassc
sudo pacman -S dart-sass
git clone https://github.com/lassekongo83/zuki-themes.git
cd zuki-themes
meson build
sudo ninja -C build install
cd
git clone https://github.com/ckissane/materia-theme-transparent.git
cd materia-theme-transparent
meson _build
meson install -C _build
cd

# add fonts
sudo pacman -S noto-fonts-cjk
sudo pacman -S noto-fonts-emoji
sudo pacman -S noto-fonts

# python
sudo pacman -S python-pip
pip install mutagen
pip install alive-progress

# mount drive
sudo pacman -S ntfs-3g

# VNI
yay -S pamac-aur-git
echo "" >> ~/.bashrc
echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
echo "export QT_IM_MODULE=ibus" >> ~/.bashrc
echo "export XMODIFIERS=@im=ibus" >> ~/.bashrc
echo "export QT4_IM_MODULE=ibus" >> ~/.bashrc
echo "export CLUTTER_IM_MODULE=ibus" >> ~/.bashrc
echo "ibus-daemon -drx" >> ~/.bashrc

# browser
sudo pacman -S firefox
sudo snap install brave

# office 
git clone https://aur.archlinux.org/wps-office.git
makepkg -si
cd

# screen recorder
sudo pacman -S obs-studio
git clone https://aur.archlinux.org/kazam.git
cd kazam/
sudo pacman -S libkeybinder3 
sudo pacman -S gst-libav 
sudo pacman -S libwnck3
sudo pacman -S python-distutils-extra
makepkg -si
cd ..


# networking
sudo pacman -S wireshark-cli
sudo pacman -S wireshark-qt

# other
sudo pacman -S vlc
sudo pacman -S ksnip
sudo pacman -S qbittorrent 
sudo pacman -S vim
sudo pacman -S discord
sudo wget https://zoom.us/client/latest/zoom_x86_64.pkg.tar.xz
sudo pacman -U zoom_x86_64.pkg.tar.xz

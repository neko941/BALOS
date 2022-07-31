sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S --needed base-devel
sudo pacman -S git 

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

sudo pacman -S firefox
sudo pacman -S vlc
sudo pacman -S obs-studio
sudo pacman -S ksnip
sudo pacman -S qbittorrent 

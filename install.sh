sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S --needed base-devel
sudo pacman -S git 

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd
git clone https://aur.archlinux.org/snapd.git && cd snapd && makepkg -si && sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap && cd

sudo pacman -S firefox
sudo pacman -S vlc
sudo pacman -S obs-studio
sudo pacman -S ksnip
sudo pacman -S qbittorrent 

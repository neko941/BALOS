sudo pacman -S meson
sudo pacman -S dart-sass
sudo pacman -S gtk-engine-murrine
sudo pacman -S npm

git clone https://github.com/ckissane/materia-theme-transparent.git
cd materia-theme-transparent
meson _build
meson install -C _build
cd

# https://github.com/yilozt/mutter-rounded
yay -S mutter-rounded 

sudo npm install --global webpack
sudo pacman -S yarn
git clone https://github.com/yilozt/mutter-rounded-setting
cd ./mutter-rounded-setting
./install
cd
# gjs dist/mutter_settings.js`

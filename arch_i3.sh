################## INSTALL
PKGS=(
# ---------------------------------------- BASIC
	'base'
	'linux'
	'linux-firmware'
	'sof-firmware'
	'base-devel'
	'git'
	
# ---------------------------------------- I3 
		'i3-gaps' 
		'i3blocks'
		'i3lock'
		'i3status'
# ---------------------------------------- XORG 
		'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xf86-video-intel'      # 2D/3D video driver
		#'xf86-video-amdgpu'     # AMD driver
		'nvidia nvidia-utils'   # NVIDIA driver
        'mesa'                  # Open source version of OpenGL
        'xf86-input-libinput'   # Trackpad driver for Dell XPS
		'xorg-xeyes'
		'xorg-sclock'
		'xterm'
		'virtualbox-guest-utlis' # if running on virtual box
		
# ---------------------------------------- CODE EDITOR
		'nano'
		'vim'
		'vi'

# ---------------------------------------- FONTS 
		'tff-dejavu'			# for i3 displays correctly
		'noto-fonts-cjk'
		'noto-fonts-emoji'
		'noto-fonts'
		
# ---------------------------------------- DISPLAY MANAGER 
		'lightdm'
		'lightdm-gtk-greeter'		

# ---------------------------------------- STATUS BAR 	
		'polybar'
		
# ---------------------------------------- NETWORKING
		'wireshark-cli'
		'wireshark-qt'
		
# ---------------------------------------- FILE TRANSFER
		'android-file-transfer'
		
# ---------------------------------------- NETWORK MANAGER

# ---------------------------------------- VIDEO
		'vlc'

# ---------------------------------------- TORRENT
		'qbittorrent'
		
# ---------------------------------------- cOMMUNICATION	
		'discord'

# ---------------------------------------- OTHERS
		'neofetch'
		'wget'
)
for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo sudo pacman -S "$PKG" --noconfirm --needed
done

################## EXTERNAL PROGRAM
PKGS=(
# ---------------------------------------- AURS
		'yay' 
		
# ---------------------------------------- OFFICE	
		'wps-office'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    git clone https://aur.archlinux.org/${PKG}.git
	cd ${PKG}
	makepkg -si
	cd ../ 
	sudo rm -rfv ${PKG}/
done

################## ENABLE
PKGS=(
		'lightdm' 
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo sudo systemctl enable "$PKG"
done


################## CHANGE CONFIG
#TFILE=`mktemp --tmpdir tfile.XXXXX`
#trap "rm -f $TFILE" 0 1 2 3 15
#sed s/exec/#exec/ /etc/X11/xinit/xinitrc > "$TFILE"
#sed s/twm/#twm/ /etc/X11/xinit/xinitrc > "$TFILE"
#echo "exec i3" >> /etc/X11/xinit/xinitrc
#echo "startx" >> /etc/X11/xinit/xinitrc
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
neofetch
sudo wget https://raw.githubusercontent.com/neko941/BALOS/main/config.conf -O ./.config/neofetch/config.conf
echo "" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc

# VNI
yay -S pamac-aur-git
yay -S ibus-bamboo-git
echo "" >> ~/.bashrc
echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
echo "export QT_IM_MODULE=ibus" >> ~/.bashrc
echo "export XMODIFIERS=@im=ibus" >> ~/.bashrc
echo "export QT4_IM_MODULE=ibus" >> ~/.bashrc
echo "export CLUTTER_IM_MODULE=ibus" >> ~/.bashrc
echo "ibus-daemon -drx" >> ~/.bashrc
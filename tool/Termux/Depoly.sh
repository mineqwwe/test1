cp sources.list /data/data/com.termux/files/usr/etc/apt/sources.list
cp termux.properties $HOME/.termux/termux.properties
source /data/data/com.termux/files/usr/etc/apt/sources.list
pkg upgrade -y
pkg install x11-repo -y
pkg install root-repo -y
cp termux.properties $HOME/.termux/termux.properties
source /data/data/com.termux/files/usr/etc/apt/sources.list
pkg install neovim wget curl openssl proot-distro zsh git clang libandroid-glob -y




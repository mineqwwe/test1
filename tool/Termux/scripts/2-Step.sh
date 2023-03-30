#termux-setup-storage
./1-Step.sh
apt install zsh wget neovim curl tree openssh openssl openssl-1.1 gh git libandroid-glob -y
#1.oh-my-zsh
sh -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#2.zsh-Addons:
##zsh-syntax-highlighting
##zsh-.autosuggestions
export ZSH='~/.oh-my-zsh'
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/plugins/zsh-syntax-highlighting

#3.env
cp -f ../files/dircolors ~/.dircolors
cp -f ../files/zshrc ~/.zshrc
cp -rf ../files/termux/* ~/.termux
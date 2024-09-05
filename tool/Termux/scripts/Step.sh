termux-setup-storage
apt update && apt upgrade -y
apt install zsh wget neovim curl tree openssh gh git libandroid-glob make cmake -y
#1.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#NOTE: enter exit to continue

#2.zsh-Addons:
##zsh-syntax-highlighting
##zsh-autosuggestions
export ZSH='~/.oh-my-zsh'
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/plugins/zsh-syntax-highlighting

#3.lunarVim nightly
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

#4.env
cp -f ../files/dircolors ~/.dircolors
cp -f ../files/zshrc ~/.zshrc
cp -rf ../files/termux/* ~/.termux

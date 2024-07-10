# Install requirements
# sudo dnf install git stow zsh tmux fzf curl wget alacritty neovim zoxide
sudo pacman -S git stow zsh tmux fzf curl wget alacritty neovim zoxide
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

## zsh
yay -S oh-my-posh
#curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
mkdir -p $HOME/.local/share/fonts
yay -S ttf-meslo-nerd-font-powerlevel10k
#wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
#wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
#wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
#wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
#fc-cache -v

## alacritty
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/

## tmux
mkdir -p ~/.config/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

## micromamba
#mkdir $HOME/Programs
#echo '' | PREFIX_LOCATION=$HOME/Programs/micromamba $SHELL <(curl -L micro.mamba.pm/install.sh)
yay -S micromamba-bin
micromamba shell init --shell zsh

## neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
rm ~/.config/nvim/lua/config/keymaps.lua
rm ~/.config/nvim/lua/config/options.lua

# Create all links
stow .

# Change shell
chsh -s /usr/bin/zsh

echo "REMEMBER LOG OFF AND THEN RUN CRTL+i IN A NEW TERMINAL"

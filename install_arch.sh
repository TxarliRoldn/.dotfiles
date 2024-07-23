# Install requirements
## AUR
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

## Install
yay
sudo pacman -S git stow zsh tmux fzf curl wget alacritty neovim zoxide
yay -S oh-my-posh ttf-meslo-nerd-font-powerlevel10k micromamba-bin zinit

# Individual configs
## alacritty
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/

## neovim
git clone https://github.com/TxarliRoldn/nvim.git ~/.config/nvim

## tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

## micromamba
micromamba shell init --shell zsh

# Change shell
chsh -s /usr/bin/zsh

# Create links
stow .

echo "REMEMBER LOG OFF AND THEN RUN CRTL+i IN A NEW TERMINAL"

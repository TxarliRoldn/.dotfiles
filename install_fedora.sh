# Install requirements
sudo dnf update
sudo dnf install git stow zsh tmux fzf curl wget alacritty neovim zoxide

# Create all links
stow .

# Manual configuration
## zsh
git clone https://github.com/zdharma-continuum/zinit.git "${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
mkdir -p $HOME/.local/share/fonts
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -v

## alacritty
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/

## tmux
mkdir -p ~/.config/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

## micromamba
$SHELL <(curl -L micro.mamba.pm/install.sh)

## neovim
git clone https://github.com/TxarliRoldn/nvim.git ~/.config/nvim

# Change shell
chsh -s /usr/bin/zsh

echo "REMEMBER LOG OFF AND THEN RUN CRTL+i IN A NEW TERMINAL"

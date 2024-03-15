# Install requirements
which dnf &>/dev/null && sudo dnf install git stow zsh tmux fzf curl wget alacritty neovim

## zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
mkdir -p $HOME/.local/share/fonts
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -P $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -v

## alacritty
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

## tmux
mkdir -p ~/.config/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

## micromamba
mkdir $HOME/Programs
echo '' | PREFIX_LOCATION=$HOME/Programs/micromamba $SHELL <(curl -L micro.mamba.pm/install.sh)

## neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Create all links
stow .

# Change shell
chsh -s /usr/bin/zsh

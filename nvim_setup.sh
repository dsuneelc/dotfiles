sudo apt update
# Install neovim
sudo apt install neovim
# Install node and npm
sudo apt install nodejs
sudo apt install npm
# Configure zsh
echo "alias vim='nvim'" >> ~/.zshrc
echo "export EDITOR='nvim'" >> ~/.zshrc
source ~/.zshrc
# Create init.vim file
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
# Install vim-plug plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

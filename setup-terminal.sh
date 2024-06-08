#!/bin/bash

echo "Updating package lists..."
sudo apt update

echo "Installing Zsh..."
sudo apt install -y zsh

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Spaceship theme..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt"
ln -s "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"

echo "Configuring Spaceship theme in .zshrc..."
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="spaceship"/' ~/.zshrc

echo "Adding Spaceship theme configuration to .zshrc..."
echo 'SPACESHIP_PROMPT_ADD_NEWLINE=false' >> ~/.zshrc
echo 'SPACESHIP_CHAR_SYMBOL="❯"' >> ~/.zshrc
echo 'SPACESHIP_CHAR_SUFFIX=" "' >> ~/.zshrc

echo "Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/autoupdate
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Configuring plugins in .zshrc..."
sed -i 's/^plugins=(\(.*\))/plugins=(git zsh-autosuggestions autoupdate zsh-syntax-highlighting)/' ~/.zshrc

echo "Installation and configuration complete! You might want to restart your terminal."

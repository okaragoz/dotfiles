#!/bin/sh
qu=$SHELL
ba=/bin/zsh

if [ "$qu" == "$ba" ]
    echo "Shell is ZSH"

then
 if [ ! -d "$HOME/.oh-my-zsh" ]; then
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/okaragoz/dotfiles.git "$HOME/tmp"
    cp -rf "$HOME/tmp/" "$HOME"
    rm -rf "$HOME/tmp/"
    echo "OhmyZSH and Dotfiles are installed"
    else
    git clone --depth=1 https://github.com/okaragoz/dotfiles.git "$HOME/tmp"
    cp -rf "$HOME/tmp/" "$HOME"
    rm -rf "$HOME/tmp/"
    echo "Installing minimal Dotfiles for the first time"
    fi
else
echo "Please install zsh shell first and run this script"
fi  
#!/usr/bin/env bash

sudo pacman -Syu zsh --needed
[ ! -d "ttf-meslo-nerd-font-powerlevel10k" ] && git clone https://aur.archlinux.org/ttf-meslo-nerd-font-powerlevel10k.git --depth 1 && cd ttf-meslo-nerd-font-powerlevel10k && makepkg -si && cd ..
mkdir -p "/home/$USER/.config/zsh"
[ ! -d "/home/$USER/.config/zsh/.oh-my-zsh" ] && ZSH="/home/$USER/.config/zsh/.oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
[ ! -d "/home/$USER/.config/zsh/.oh-my-zsh/custom/themes/powerlevel10k" ] && git clone https://github.com/romkatv/powerlevel10k.git "/home/$USER/.config/zsh/.oh-my-zsh/custom/themes/powerlevel10k" --depth 1
[ ! -d "/home/$USER/.config/zsh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "/home/$USER/.config/zsh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" --depth 1
[ ! -d "/home/$USER/.config/zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions "/home/$USER/.config/zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions" --depth 1
cp zprofile "/home/$USER/.zprofile"
cp zshrc "/home/$USER/.config/zsh/.zshrc"
cp p10k.zsh "/home/$USER/.config/zsh/.p10k.zsh"
mkdir -p "/home/$USER/.config/shell"
cp aliasrc "/home/$USER/.config/shell"
cp profile "/home/$USER/.config/shell"

echo Script done. "zsh -l" to take a look at your new shell!

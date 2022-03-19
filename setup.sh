#!/usr/bin/env bash

sudo pacman -Syu zsh --needed
[ ! -d "ttf-meslo-nerd-font-powerlevel10k" ] && git clone https://aur.archlinux.org/ttf-meslo-nerd-font-powerlevel10k.git --depth 1 && cd ttf-meslo-nerd-font-powerlevel10k && makepkg -si && cd ..
mkdir -p "$HOME/.config/zsh"
[ ! -d "$HOME/.config/zsh/.oh-my-zsh" ] && ZSH="$HOME/.config/zsh/.oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
[ ! -d "$HOME/.config/zsh/.oh-my-zsh/custom/themes/powerlevel10k" ] && git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.config/zsh/.oh-my-zsh/custom/themes/powerlevel10k" --depth 1
[ ! -d "$HOME/.config/zsh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.config/zsh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" --depth 1
[ ! -d "$HOME/.config/zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.config/zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions" --depth 1
ln -s "$HOME/.config/shell/profile" "$HOME/.zprofile"
cp zshrc "$HOME/.config/zsh/.zshrc"
cp p10k.zsh "$HOME/.config/zsh/.p10k.zsh"
mkdir -p "$HOME/.config/shell"
cp aliasrc "$HOME/.config/shell"
cp profile "$HOME/.config/shell"

echo Script done. "zsh -l" to take a look at your new shell!

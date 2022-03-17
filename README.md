# Dotfiles

![image](https://user-images.githubusercontent.com/12123721/159131132-a1bb9450-05bf-4ef5-a0b2-25dd0dacfade.png)

## Install

### Install dotfiles

```bash
sudo pacman -S git
git clone https://github.com/quentinguidee/dotfiles-arch.git .config
ln -s .config/zsh/.zshrc .zshrc
```

### Install official packages

```bash
sudo pacman -S base-devel bspwm sxhkd xorg xorg-xinit xorg-xrandr zsh zsh-autosuggestions zsh-syntax-highlighting starship exa neovim python-pip go nodejs npm jdk-openjdk rofi firefox feh wget neofetch picom bat fzf openssh pulseaudio alsa-utils htop xclip dunst noto-fonts-emoji zip unzip
```

### Optional packages

```bash
sudo pacman -S discord
```

### Install yay

```bash
cd Downloads
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ../..
```

### Install AUR packages

```bash
yay -S termite oh-my-zsh-git nerd-fonts-jetbrains-mono vim-plug polybar
```

### Install neovim packages for all languages

```bash
python3 -m pip install --user --upgrade pynvim
npm install -g neovim
gem install neovim
```

## Configure

### Change your keyboard layout

Go to `.config/bspwm/bspwmrc` and change the `setxkbmap` argument.

### Change default terminal to ZSH

```bash
sudo chsh -s $(which zsh) $(whoami)
```

### Setup screen

```bash
# See all available monitor size
xrandr

# Get your monitor name
xrandr --listmonitors
```

And change this in your `.config/bspwm/bspwmrc`

### Enable services

```bash
sudo systemctl enable NetworkManager
systemctl --user enable pulseaudio
```

## License

* Wallpaper from [Unsplash](https://unsplash.com/photos/7FqOISWr5V0)
* Everything else is released under the [MIT License](./LICENSE.md)


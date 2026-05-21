## GNU Stow
```bash
sudo pacman -S stow

rm -rf ~/.config/niri
stow ~/dotfiles niri
```

## Xremap
```bash 
paru -S xremap-niri-bin
echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/99-input.rules
sudo usermod -aG input $USER
sudo reboot
```

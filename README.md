
## Dependencies:
```
sudo apt-get install neovim
sudo apt install ripgrep
pip install "python-lsp-server[all]"
```

## Kitty terminal:
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
cp kitty.conf ../kitty/

ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
```

## Shortcuts:
### vim
- ctrl+w [direction] = select window

### Project
- [space] pf = find file
- [space] ps = search text

### git
- [space] gs = git history
- ctrl+g = search git files

### Harpoon
- [space] a = add file
- ctrl+u = file 1
- ctrl+i = file 2
- ctrl+o = file 3
- ctrl+j = file 4

### Undo Tree
- [space] u = open file history

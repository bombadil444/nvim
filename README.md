
## Dependencies:
```
sudo apt-get install neovim

# python lsp
sudo apt install ripgrep
pip install "python-lsp-server[all]"

# C# lsp
sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get install -y dotnet-runtime-6.0
# go into nvim and run the following
:OmniSharpInstall
# add the following to .bashrc
export DOTNET_ROOT=<location where .../dotnet folder is> # could be /usr/share/dotnet - should have host/ folder
export PATH=$PATH:$HOME/.cache/omnisharp-vim/omnisharp-roslyn
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
- ctrl+w w = jump between windows
- <number> ctrl+w | = set window width
- m<number> = mark file position at <number>
- '<number> = jump to mark <number>
- D = delete from cursor to end of line

### Project
- [space] pf = find file
- [space] ps = search text

### git
- [space] gs = git history
- ctrl+g = search git files

### Harpoon
- ctrl+h = show harpooned files
- [space] a = add file
- ctrl+u = file 1
- ctrl+i = file 2
- ctrl+o = file 3
- ctrl+j = file 4

### Undo Tree
- [space] u = open file history

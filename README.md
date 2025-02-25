# Requirements

- JetBrains Mono font
- NodeJS with npm
- C compiler set in path and libstdc++ installed

# Usage

## Option 1 - Clone to default Neovim configuration location

### Linux

```sh
git clone https://github.com/salmatx/nvim-config.git ~/.config/nvim
```

### Windows

```sh
git clone https://github.com/salmatx/nvim-config.git C:\Users\Username\AppData\Local\nvim
```

## Option 2 - Clone to custom location and redirect by symlink

### Linux

```sh
git clone https://github.com/salmatx/nvim-config.git ~/projects/nvim-config
ln -s ~/projects/nvim-config ~/.config/nvim
```

### Windows

```sh
git clone https://github.com/salmatx/nvim-config.git C:\nvim-config
New-Item -ItemType Junction -Path "$LOCALAPPDATA\nvim" -Target "C:\nvim-config"
```

## Option 3 - Clone to custom location and use $XDG_CONFIG_HOME

### Linux

```sh
git clone https://github.com/salmatx/nvim-config.git ~/projects/nvim-config
export XDG_CONFIG_HOME=~/projects/nvim-config
```

Make it pernamet by using

```sh
echo 'export XDG_CONFIG_HOME=~/projects/nvim-config' >> ~/.bashrc
source ~/.bashrc
```

### Windows

```sh
git clone https://github.com/salmatx/nvim-config.git C:\nvim-config
$env:XDG_CONFIG_HOME="C:\nvim-config"
```

Make it pernamet by using

```sh
echo '$env:XDG_CONFIG_HOME="C:\nvim-config"' >> $PROFILE
```

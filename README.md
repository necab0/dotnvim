# My neovim configuration

## Install

Requirements:
- git
- curl
- ripgrep
- exuberant-ctags

```bash
cd ~
mv .config/nvim .config/nvim.bak  # backup current neovim configuration if present
git clone https://github.com/necab0/dotnvim.git .nvim
cd .nvim && ./install.sh
```

## Usage

| Key           | Description                   |
| ------------- | ----------------------------- |
| <kbd>F1</kbd> | open :help                    |
| <kbd>F2</kbd> | open file browser (nerd tree) |
| <kbd>F3</kbd> | toggle paste mode             |
| <kbd>F4</kbd> | open fuzzy find               |
| <kbd>F5</kbd> | toggle tag bar                |

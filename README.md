# My neovim configuration

## Install

Requirements:
- python-neovim
- git
- curl
- ripgrep
- exuberant-ctags
- patched font that includes Font Awesome

Optional:
- cargo-clippy (pedantic Rust linter)
- flake8 (Python PEP8 linter)
- isort (Python import sorting)

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
| <kbd>F5</kbd> | open LSP actions              |
| <kbd>F6</kbd> | toggle tag bar                |

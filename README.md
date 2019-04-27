# My neovim configuration

## Install

Requirements:
- python-neovim
- neovim-nightly (required for floating windows coming in 0.4)
- git
- curl
- ripgrep
- exuberant-ctags
- patched font that includes Font Awesome

Optional:
- rls (Rust Language Server for completions and more)
- cargo-clippy (pedantic Rust linter)
- pyls (Python Language Server for completions and more)
- flake8 (Python PEP8 linter)
- isort (Python import sorting)

```bash
cd ~
mv .config/nvim .config/nvim.bak  # backup current neovim configuration if present
git clone https://github.com/necabo/dotnvim.git .nvim
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
| <kbd>F6</kbd> | LSP rename action             |

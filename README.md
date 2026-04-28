# dotfiles

## Dependencies

* [Starship](https://starship.rs/)
  * Arch Linux: `paru -S starship ttf-nerd-fonts-symbols-mono`
  * Windows: `scoop install starship`
* [mise](https://mise.jdx.dev/)
  * Arch Linux: `paru -S mise`
  * Windows: `scoop install mise`
* [WezTerm](https://wezterm.org/) - Nightly
  * Arch Linux: `paru -S wezterm-nightly-bin`
  * Windows: <https://wezterm.org/install/windows.html> - Nightly Windows (setup.exe)

## Usage

```sh
mkdir -p ~/src
cd ~/src
git clone https://github.com/gsuke/dotfiles.git
cd dotfiles
./install.sh
. ~/.bashrc
```

Windowsの場合 `gsudo .\install.ps1` (管理者権限が必要)

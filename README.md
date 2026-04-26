# dotfiles

## Dependencies

* [Starship](https://starship.rs/)
  * Arch Linux: `paru -S starship ttf-nerd-fonts-symbols-mono`
  * Windows: `scoop install starship`
* [mise](https://mise.jdx.dev/)
  * Arch Linux: `paru -S mise`
  * Windows: `scoop install mise`
* [WezTerm](https://wezterm.org/)
  * Arch Linux: `paru -S wezterm`
  * Windows: <https://wezterm.org/install/windows.html>

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

その後、 `~/.bash_private` を作成する。

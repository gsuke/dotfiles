# dotfiles

## Usage

Dependencies をすべて導入したうえで、

```sh
cd ~/src
git clone https://github.com/gsuke/dotfiles.git
cd dotfiles
./install.sh
. ~/.bashrc
```

Windowsの場合、PowerShell管理者権限で `.\install.ps1`

その後、 `~/.bash_private` を作成する。

## Dependencies

* [WezTerm](https://wezterm.org/)
  * Arch Linux: `paru -S wezterm`
  * Windows: <https://wezterm.org/install/windows.html>
* Bash
* [Starship](https://starship.rs/): `paru -S starship`
* [mise](https://mise.jdx.dev/)
  * Arch Linux: `paru -S mise`
  * Windows: `scoop install mise`

# dotfiles

UNIX / Linux / macOS 用の設定ファイル。

## Requirements

- git
- zsh
- curl (自動インストールの場合)

## Install

### 自動インストール

`utils/auto-install.sh` を使ってインストールする。
`dot.hiroto-k.net` へアクセスすると自動で `utils/auto-install.sh` へ転送される。

```bash
bash -c "$(curl -L dot.hiroto-k.net)"
```

### 手動インストール

手動でインストールする場合, このリポジトリを ``git clone`` してセットアップ用スクリプトを実行。
セットアップ用スクリプトは ``zsh`` を使用して実行。
実行内容は上記の自動インストールと同じ。

```bash
git clone --depth 1 https://github.com/hiroxto/dotfiles ~/dotfiles
cd ~/dotfiles
zsh initialize.zsh
```

## Update

このリポジトリに入っている ``pull-dotfiles`` コマンドを使う。
dotfiles 本体と git 経由でインストールされるツール一式が更新される。

```bash
pull-dotfiles
```


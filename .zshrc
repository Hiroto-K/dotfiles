# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# $PATHを設定
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$HOME/.anyenv/bin:/usr/local/heroku/bin:$PATH"

# 優先的に読み込む設定
for file in `ls -1 ~/.zsh/init/*.zsh`;do
  source $file
done

# 後から読み込む設定
for file in `ls -1 ~/.zsh/custom/*.zsh`;do
  source $file
done

unset file

# $PATHから重複したpathを削除する
typeset -U path PATH

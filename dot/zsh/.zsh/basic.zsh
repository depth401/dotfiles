## 履歴保存管理
HISTSIZE=100000
SAVEHIST=1000000

## 他のzshと履歴を共有
setopt inc_append_history
setopt share_history

## 重複排除
setopt hist_ignore_all_dups
setopt hist_ignore_dups

setopt hist_no_store
setopt hist_reduce_blanks

## パスを直接入力してもcdする
setopt AUTO_CD

## 環境変数を補完
setopt AUTO_PARAM_KEYS

zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light marlonrichert/zsh-autocomplete
#gitのレポジトリをブラウザで開く
zinit light paulirish/git-open

#bat設定
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
#catをbatに変更
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi


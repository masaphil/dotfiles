SCRIPT_DIR=$HOME/dotfiles
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi








### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk


source $SCRIPT_DIR/zsh/plugins.zsh
source $SCRIPT_DIR/zsh/config.zsh
source $SCRIPT_DIR/zsh/alias.zsh
source $SCRIPT_DIR/zsh/p10k.zsh
source $SCRIPT_DIR/zsh/peco.zsh
source $SCRIPT_DIR/zsh/.zprofile
source $SCRIPT_DIR/zsh/.zshenv


# history
HISTFILE=$SCRIPT_DIR/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000

# share .zshhistory
setopt inc_append_history
setopt share_history

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# z command
. ~/z/z.sh

autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit
compinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

export PATH="$HOME/.cargo/bin:$PATH"

export GOPATH=$HOME/.go
export PATH="$GOPATH/bin:$PATH"
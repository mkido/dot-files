bindkey -e

fpath=($HOME/zsh/functions/cd-bookmark(N-/) $fpath)

autoload -Uz cd-bookmark
alias cdb='cd-bookmark'


#set alias
alias ll='ls -ltrG'
alias la='ls -laG'
alias ls='ls -G'


PROMPT='[%n@%m]# '

printf "\033k$HOSTNAME\033\\"
alias syn='~/shell/synchro_cmd.sh'

#peco

function peco-pkill() {
    for pid in `ps aux | peco | awk '{ print $2 }'`
	        do
			        kill $pid
				        echo "Killed ${pid}"
					    done
				    }

alias pk="peco-pkill"


function peco_open_bookmark() {
    cdb | peco | awk -F"|" '{ print $2 }' | xargs open
    }
    zle -N peco_open_bookmark
    bindkey '^@' peco_open_bookmark

alias pcd="peco_open_bookmark"

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# # メモリに保存される履歴の件数
export HISTSIZE=1000

# # 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# # 重複を記録しない
setopt hist_ignore_dups

# # 開始と終了を記録
setopt EXTENDED_HISTORY


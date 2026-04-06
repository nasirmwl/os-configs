source ~/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Added by Antigravity
export PATH="/Users/nasirmovlamov/.antigravity/antigravity/bin:$PATH"
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
# eval "$(starship init zsh)"

# nvm aliases
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.local/bin:$PATH"


# key bindings

# Use CTRL + E to accept the suggestion (standard 'End of line' behavior)
bindkey '^E' autosuggest-accept


alias ..="cd .."
alias ...="cd ../.."

alias tp="cd ~/temp/"
alias sd="cd ~/temp/sd"
alias pers="cd ~/temp/sd/personal"
alias extensions="cd ~/temp/sd/personal/chrome-extensions"

alias dlp="cd ~/temp/dlp/documents"
alias uikit="cd ~/temp/dlp/uikit"
alias l="ls -lahp"
alias h="history"
alias ql='qlmanage -p "$1" >& /dev/null'
alias myip="curl -s https://ifconfig.me | pbcopy"
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias src="source ~/.zshrc"

alias cpu="ps auxf | sort -nr -k 3 | head -10"
alias empty="rm -rf ~/.Trash/*"

#  git aliasses 
alias gst="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git pull"
# stash changes
alias gs="git stash"
alias gsa="git stash apply"
alias gsl="git stash list"


alias rm="rm -iv"
alias remove="rm -rf"
alias rf="rm -rf"
alias cp="cp -iv"
alias mv="mv -iv"
alias path='echo $PATH | tr ":" "\n"'
alias a="agent"
alias we="curl 'wttr.in/Baku?format=Today:+%c+%t\nTomorrow:+%c+%t'"
alias intercept="mitmweb  --mode local -s ~/dlp_in.py"
alias cintercept="cursor --wait ~/dlp_in.py"

# Find and open in VSCode
fcode() { find . -name "*$1*" | head -1 | xargs code; }

# Wifi password for current network
alias wifipw="security find-generic-password -wa $(networksetup -getairportnetwork en0 | cut -d' ' -f4)"
# zconf cursor
alias zconf="cursor --wait ~/.zshrc"

# Append a quick note with timestamp
note() { echo "$(date '+%Y-%m-%d %H:%M') — $*" >> ~/notes.txt; }
notes() { cat ~/notes.txt; }
clearnotes() { > ~/notes.txt && echo "Notes cleared"; }

# memory and cpu
alias topcpu="ps aux | sort -nrk 3 | head -15 | awk '{printf \"%-10s %-6s %-6s %s\n\", \$1, \$3, \$4, \$11}'"
alias topmem="ps aux | sort -nrk 4 | head -15 | awk '{printf \"%-10s %-6s %-6s %s\n\", \$1, \$3, \$4, \$11}'"

# ports
# Who's listening on what port
alias ports="lsof -iTCP -sTCP:LISTEN -n -P"

add-alias() {
    echo "alias $1" >> ~/.zshrc
    source ~/.zshrc
    echo "Alias added and reloaded: alias $1"
}

# kill port
k() { lsof -ti tcp:$1 | xargs kill -9; }




# Weather dashboard alias
alias we='
curl -s "wttr.in/Baku?format=Today:+%c+%t+🌬️%w+💧%h+🌧️%p" && echo && \
curl -s "wttr.in/Baku?format=Tomorrow:+%c+%t+🌬️%w+💧%h+🌧️%p" && echo && \
echo -e "\e[33m$(curl -s "wttr.in/Baku?format=Weekend:+%c+Avg:%t+🌧️%p")\e[0m" && \
echo -e "\e[33m$(curl -s "wttr.in/Lahic?format=Lahic+Weekend:+%c+%t")\e[0m" && echo
'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


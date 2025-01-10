export ZSH=/usr/share/oh-my-zsh
export ZSH_THEME=simple
export DISABLE_AUTO_UPDATE=true
export ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir -p $ZSH_CACHE_DIR
fi
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(
  git
)
source "$ZSH/oh-my-zsh.sh"
PROMPT='%(?.%{$fg[green]%}.%{$fg[red]%})%?%{$fg_bold[blue]%}|%{$fg[green]%}%C%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[cyan]%}'
if [[ $(id -u) -eq 0 ]]; then
  PROMPT+='# %{$reset_color%}'
else
  PROMPT+='$ %{$reset_color%}'
fi
export PROMPT

#umask 002
alias ls="ls --color=auto --group-directories-first"
alias l='ls -Fhla'
alias ll='ls -FhlaSr'
alias lt='ls -Fhlatr'
alias lx='ls -FhlaX'
alias lv='ls -Fhlav'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'
alias j='cd'
alias jp='cd $(pwd -P)'
alias vi='vim'
alias ec='emacsclient -tc -a "emacs -nw"'
alias md='mkdir -p'
alias mkpdir='mkdir bin lib libexec share etc man doc misc include src'
alias mkddir='mkdir Comics Desktop Documents Downloads Games Library Music Pictures Public Resources Templates Temporary Videos'
alias sudo='sudo '
alias nvrun='nvrun '
alias brun='brun '
alias srun='run0 '
alias cls='printf "\033[2J\033[3J\033[1;1H"'
alias pc='proxychains '
alias load.aocc='module load aocc && module load aocl-aocc'
alias unload.aocc='module unload aocc; module unload aocl-aocc'
alias yay='run0 --background="" --user=system -- /usr/bin/paru'
#alias update="sh -c 'apt update && apt upgrade -y'"
#alias update='yum update -y'
#alias pon='export all_proxy=socks://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890'
#alias poff='unset all_proxy http_proxy https_proxy'
#export all_proxy='socks://127.0.0.1:7890' http_proxy='http://127.0.0.1:7890' https_proxy='http://127.0.0.1:7890'
alias switcheroo='envycontrol --verbose --coolbits 24 --switch'
alias sdcv='sdcv --non-interactive --utf8-output --utf8-input --color'
export MACOS_UA='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15'
export WINDOWS_UA='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.0.0'
export BAIDU_UA='netdisk;7.2.6.2;PC'
alias curl.mac="curl -A'$MACOS_UA'"
alias curl.win="curl -A'$WINDOWS_UA'"
alias wget="wget -U'$MACOS_UA'"
alias wget.win="wget -U'$WINDOWS_UA'"
alias aget="aria2c -x128 -U'$MACOS_UA'"
alias aget.win="aria2c -x128 -U'$WINDOWS_UA'"
alias baiduget="aria2c -x4 -s4 -j4 -U'$BAIDU_UA'"
export EDITOR=vim
export VISUAL='emacsclient -tc -a "emacs -nw"'
alias wineinit='winetricks -q vcrun6 vcrun6sp6 gdiplus riched20 riched30 richtx32 msctf msftedit autostart_winedbg=disabled'
export WINEPREFIX="$HOME/wine/64/default"
export WINEARCH=win64
export WINEDEBUG=-all
export WINETRICKS_DOWNLOADER=wget
unset DEBUGINFOD_URLS
alias weather='curl --silent --header "Accept-Language:zh-CN,zh;q=0.8" http://wttr.in'
alias star-wars='telnet towel.blinkenlights.nl'
unalias cd &>/dev/null
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.local.node/bin:$HOME/.local.python/bin:"${PATH-/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/local/games:/usr/games:/opt/bin}":/usr/local/games:/usr/games:/opt/bin"
#test -z "$ZTERM" && [[ "$TERM"_ == "linux"_ ]] && export ZTERM=z
if [[ $- == *i* && "$ZTERM"_ == *z*_ && "$TERM"_ == "linux"_ && "$ZHCON"_ != "1"_ ]] && which zhcon &>/dev/null; then
  export ZHCON=1
  LANG=zh_CN.UTF-8 zhcon --utf8
fi
if [[ $- == *i* && "$ZTERM"_ == *t*_ ]] && which tmux &>/dev/null && test -z "$TMUX"; then
  if tmux has-session &>/dev/null; then tmux attach; else tmux new-session; fi
elif [[ $- == *i* && "$ZTERM"_ == *T*_ ]] && which tmux &>/dev/null && test -z "$TMUX"; then
  if tmux has-session &>/dev/null; then exec tmux attach; else exec tmux new-session; fi
fi

if [[ -f "$HOME/.zshrc_local" ]]; then
  source "$HOME/.zshrc_local"
fi

return 0

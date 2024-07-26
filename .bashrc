#If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#if [ "$color_prompt" = yes ]; then
#  export PS1='\[\033[01;31m\][\[\033[00m\]$?\[\033[01;31m\]]\[\033[00m\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#  export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi

umask 002
export PS1='[$?][\u@\h \W]\$ '
alias ls="ls --color=auto --group-directories-first"
alias l='ls -Fhla'
alias ll='ls -FhlaX'
alias la='ls -FhlaSr'
alias lt='ls -Fhlatr'
alias lv='ls -Fhlav'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"
alias j='cd'
alias jp='cd $(pwd -P)'
#alias vi='vim'
#alias ec='emacsclient -tc -a "emacs -nw"'
alias md='mkdir -p'
alias mkpdir='mkdir bin lib libexec share etc man doc misc include src'
alias mkddir='mkdir Desktop Pictures Music Videos Downloads Templates Documents Public'
alias sudo='sudo '
alias nvrun='nvrun '
alias brun='brun '
alias cls='printf "\033[2J\033[3J\033[1;1H"'
alias gaa='git add --all'
alias gc='git commit --verbose'
alias gcam='git commit --all --allow-empty-message --message'
alias gst='git status'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpr='git pull --rebase'
alias gcln='git reset --hard && git clean -xdff'
alias pc='proxychains '
alias time='/usr/bin/time'
alias kill='/bin/kill'
#alias reboot='systemctl reboot'
#alias poweroff='systemctl poweroff'
#alias update='pacman -Syu --noconfirm'
#alias update="sh -c 'apt update && apt upgrade -y'"
#alias update='yum update -y'
#alias update.code='for ext in $(code --list-extensions); do code --install-extension "$ext"; done'
alias pon='export all_proxy=socks://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890'
alias poff='unset all_proxy http_proxy https_proxy'
#export all_proxy='socks://127.0.0.1:7890' http_proxy='http://127.0.0.1:7890' https_proxy='http://127.0.0.1:7890'
#alias switcheroo='envycontrol --verbose --coolbits 24 --switch'
export EDITOR=vim
#export VISUAL='emacsclient -tc -a "emacs -nw"'
export WINEPREFIX="$HOME/wine/64/default"
export WINEARCH=win64
export WINEDEBUG=-all
export WINETRICKS_DOWNLOADER=wget
unset DEBUGINFOD_URLS
alias weather='curl --silent --header "Accept-Language:zh-CN,zh;q=0.8" http://wttr.in'
alias star-wars='telnet towel.blinkenlights.nl'
unalias cd &>/dev/null
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.local.node/bin:$HOME/.local.python/bin:"${PATH-/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/local/games:/usr/games:/opt/bin}":/usr/local/games:/usr/games:/opt/bin"
return 0

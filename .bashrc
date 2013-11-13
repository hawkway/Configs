[ ! "$UID" = "0" ] && archey3 -c blue
[  "$UID" = "0" ] && archey3 -c red
#command cowsay $(fortune)
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
PS1="\n${DGRAY}╭─[${LBLUE}\w${DGRAY}]\n${DGRAY}╰─[${WHITE}\T${DGRAY}]${DGRAY}>${BLUE}>${LBLUE}> ${RESET_COLOR}"
#complete -cf sudo
#complete -cf man
function ii()   # Get current host related info.
{
  echo -e "\nYou are logged on ${RED}$HOST"
  echo -e "\nAdditionnal information:$NC " ; uname -a
  echo -e "\n${RED}Users logged on:$NC " ; w -h
  echo -e "\n${RED}Current date :$NC " ; date
  echo -e "\n${RED}Machine stats :$NC " ; uptime
  echo -e "\n${RED}Memory stats :$NC " ; free
  my_ip 2>&- ;
  echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
  echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
  echo -e "\n${RED}Open connections :$NC "; netstat -pan --inet;
  echo
}
alias ls='ls --color=auto'
alias ping='ping -c 3'
alias pong='tsocks ping -c 5'
# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# fun stuff
#alias bender='cowsay -f bender $(fortune -so)'
alias matrix='cmatrix -C magenta'
# useful stuff
alias ..='cd ..'
alias ...='cd ../..'

alias dev='cd ~/Development'
alias backup=' sh ~/bin/backup_pkgs'

alias grep='grep --color=auto'

alias reload='source ~/.bashrc'

alias cclean='sudo cacheclean -v 1'
alias git='hub'
#alias irssi='urxvt -e irssi &'
alias weechat='screen weechat-curses'
#alias finch='urxvt -e finch &'
alias mirror='sudo reflector -c "Canada United States" -f 6 > mirrorlist'
#
#alias tor='~/.tor-browser_en-US/start-tor-browser'
# control hardware
#alias cdo='eject /dev/cdrecorder'
#alias cdc='eject -t /dev/cdrecorder'
#alias dvdo='eject /dev/dvd'
#alias dvdc='eject -t /dev/dvd'
# modified commands
alias home='cd ~'

alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ssh'
#alias sshlogin='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa)'

# vlc
alias community='vlc -f ~/community.xspf &'
alias troyabed='env DISPLAY=:0.0 screen vlc -f ~/community.xspf &'
alias killvlc='env DISPLAY=:0.0 screen sh ~/bin/killvlc.sh'
alias vlckill='sh ~/bin/killvlc.sh'
alias monoff='env DISPLAY=:0.0 screen sh ~/bin/monitor_off.sh'
alias monkoff='env DISPLAY=:0.0 screen sh ~/bin/killvlc_now.sh'

# scripts
alias unrars='perl ~/bin/unrar.pl'
alias rmtorrent='rm -rf ~/Downloads/*.torrent'
alias cleandir='rm -rf ~/input/zzz_EXT/*'
alias unrarcl='unrars && cleandir'
alias citbak='sh ~/bin/cit245_bu.sh'
alias movetv='sh ~/bin/move_tv.sh'
alias unrarclt='unrarcl && movetv'

# CIT
alias cit='cd input/CIT_245'
alias netb='cd input/CIT_245/NetBeansProjects'

# video processing
alias joinavi='mencoder -oac copy -ovc copy -o ~/input/aaaa.avi ~/input/m1.avi ~/input/m2.avi'
alias convert2iso='mkisofs -dvd-video -o AAAA.iso /home/highway/ZZZZ/'

# httpd
alias starthttpd='sudo systemctl start httpd'
alias stophttpd='sudo systemctl stop httpd'
alias resethttpd='sudo systemctl reset httpd'
alias statushttpd='systemctl status httpd'

# LAMP
alias startlamp='sudo lamp start'
alias stoplamp='sudo lamp stop'
alias restartlamp='sudo lamp restart'

# MySQL
alias startmysql='sudo systemctl start mysqld'
alias stopmysql='sudo systemctl stop mysqld'
alias resetmysql='sudo systemctl reset mysqld'
alias statusmysql='sudo systemctl mysqld'

# sshd
alias startsshd='sudo systemctl start sshd.service'
alias stopsshd='sudo systemctl stop sshd.service'
alias statussshd='systemctl status sshd.service'
alias restartsshd='sudo systemctl restart sshd.service'

# office
alias writer='/usr/bin/libreoffice --writer'
alias calc='/usr/bin/libreoffice --calc'
alias impress='/usr/bin/libreoffice --impress'
alias math='/usr/bin/libreoffice --math'
alias base='/usr/bin/libreoffice --base'

# ssh
alias sshwbl='sh ~/bin/ssh_wbl.sh'
alias sshades='sh ~/bin/ssh_hades.sh'
alias hadesf='sh ~/bin/lftp_box.sh'
alias nmapscan='nmap -sP 10.1.10.1-255'

# games
alias doom1='prboom -iwad doom1.wad'
alias doom2='prboom -iwad doom2.wad'
alias dday='launch-doomsday'

# apps
alias e='emacs -nw'
alias matlabn='matlab -nojvm -nodesktop'
alias scheme='mit-scheme'
alias edwin='mit-scheme --edit &'
alias g11='g++ -std=c++11'

# other
alias mpvbox='sudo modprobe vboxdrv'

# updates
alias update='sudo pacman -Syu'
alias aupdate='pacaur -Syua'
alias updates='sudo pacman -Syu && pacaur -Syua && cclean && gh -b'

# pacman
alias a='pacaur -S'
alias aa='pacaur -Ss'
alias p='sudo pacman -S'
alias pp='pacman -Ss'
alias prs='sudo pacman -Rs'
alias prns='sudo pacman -Rns'
alias pqs='pacman -Qs'
alias pqdt='pacman -Qdt'
alias rmorphan='sudo pacman -Rns $(pacman -Qdtq)'

# power
alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"

# ssh server
source ~/.bash_ssh

# exports
export PERL_LOCAL_LIB_ROOT="/home/highway/perl5";
export PERL_MB_OPT="--install_base /home/highway/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/highway/perl5";
export PERL5LIB="/home/highway/perl5/lib/perl5/x86_64-linux-thread-multi:/home/highway/perl5/lib/perl5";
export PATH="/home/highway/perl5/bin:$PATH";
export EDITOR=emacs

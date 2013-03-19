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
alias ping='ping -c 5'
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
alias nc='ncmpcpp'
alias grep='grep --color=auto'
alias mounthdd='sudo udisks --mount /dev/sdb4'
alias mounthdd3='sudo udisks --mount /dev/sdb3'
#alias sploit='/opt/metasploit-4.2.0/msfconsole'
alias kdeicons='rm ~/.kde4/cache-linux/icon-cache.kcache'
alias deltrash1='sudo rm -rv /media/truecrypt1/.Trash-1000/'
alias deltrash2='sudo rm -rv /media/truecrypt2/.Trash-1000/'
alias deltrash='rm -rv ~/.local/share/Trash/'
alias sdeltrash1='sudo srm -rv /media/truecrypt1/.Trash-1000/'
alias sdeltrash2='sudo srm -rv /media/truecrypt2/.Trash-1000/'
alias sdeltrash='srm -rv ~/.local/share/Trash/'
alias delthumbs='srm -rv ~/.thumbnails/'
alias reload='source ~/.bashrc'
alias xdef='xrdb -merge ~/.Xdefaults' 
alias flushdns="sudo /etc/rc.d/nscd restart"
alias delfonts='fc-cache -vf'
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
#alias pg='ps aux | grep'  #requires an argument
alias ping='ping -c 10'
# chmod commands
#alias mx='chmod a+x'
#alias 000='chmod 000'
#alias 644='chmod 644'
#alias 755='chmod 755'
#alias tl='tail -f /var/log/syslog.log'
#alias tk='tail -f /var/log/kernel.log'
#alias th='tail -f /var/log/httpd/error_log'
#alias te='tail -f /var/log/errors.log'
# local server
#alias counter='ssh 192.168.2.107 -l root'
# scripts and folders
# alias conk='sh ~/.config/conky/.conkyrc'
alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ssh'
#alias sshlogin='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa)'
#
#alias loadtv='env DISPLAY=:0.0 screen /usr/bin/teamviewer7 &'
#
alias community='vlc -f ~/community.xspf &'
alias troyabed='env DISPLAY=:0.0 screen vlc -f ~/community.xspf &'
alias killvlc='env DISPLAY=:0.0 screen sh ~/bin/killvlc.sh'
alias vlckill='sh ~/bin/killvlc.sh'
alias monoff='env DISPLAY=:0.0 screen sh ~/bin/monitor_off.sh'
alias monkoff='env DISPLAY=:0.0 screen sh ~/bin/killvlc_now.sh'
alias unrars='perl ~/bin/unrar.pl'
#
alias joinavi='mencoder -oac copy -ovc copy -o ~/input/aaaa.avi ~/input/m1.avi ~/input/m2.avi'
alias convert2iso='mkisofs -dvd-video -o AAAA.iso /home/highway/ZZZZ/'
#
alias starthttpd='sudo systemctl start httpd'
alias stophttpd='sudo systemctl stop httpd'
alias resethttpd='sudo systemctl reset httpd'
alias statushttpd='systemctl status httpd'
#
alias startlamp='sudo lamp start'
alias stoplamp='sudo lamp stop'
alias restartlamp='sudo lamp restart'
#
alias startmysql='sudo systemctl start mysqld'
alias stopmysql='sudo systemctl stop mysqld'
alias resetmysql='sudo systemctl reset mysqld'
alias statusmysql='sudo systemctl mysqld'
#
alias startsshd='sudo systemctl start sshd.service'
alias stopsshd='sudo systemctl stop sshd.service'
alias restartsshd='sudo systemctl restart sshd.service'
#
alias writer='/usr/bin/libreoffice --writer'
alias calc='/usr/bin/libreoffice --calc'
alias impress='/usr/bin/libreoffice --impress'
alias math='/usr/bin/libreoffice --math'
alias base='/usr/bin/libreoffice --base'
#
alias sshpi='ssh highway@10.1.10.14'
alias sshelec='ssh root@10.1.10.14'
alias nmapscan='nmap -sP 10.1.10.1-255'
alias doom1='prboom -iwad doom1.wad'
alias doom2='prboom -iwad doom2.wad'
alias dday='launch-doomsday'
#
alias rmtorrent='rm -rf ~/Downloads/*.torrent'
alias cleandir='rm -rf ~/input/zzz_EXTRACT/*'
alias unrarcl='unrars && cleandir'
alias mpvbox='sudo modprobe vboxdrv'
alias e='emacs -nw'
alias matlabn='matlab -nojvm -nodesktop'
#
alias update='sudo pacman-color -Syu'
alias aupdate='pacaur -Syua'
alias updates='sudo pacman-color -Syu && pacaur -Syua'
#
alias a='pacaur -S'
alias aa='pacaur -Ss'
alias p='sudo pacman-color -S'
alias pp='pacman-color -Ss'
alias prs='sudo pacman-color -Rs'
alias pqs='pacman-color -Qs'
alias rmorphan='sudo pacman-color -Rns $(pacman -Qdtq)'
#alias supdate='sudo powerpill-light -yu'
alias pacman='pacman-color'
alias pacinstall="sudo pacman-color -S"      # default action     - install one or more packages
alias pacsearch="pacman-color -Ss"           # '[s]earch'         - search for a package using one or more keywords
alias pacupdate="sudo pacman-color -Syu"     # '[u]pdate'         - upgrade all packages to their newest version
alias pacremove="sudo pacman-color -R"       # '[r]emove'         - uninstall one or more packages
alias pacdremove="sudo pacman-color -Rs"     # '[r]emove'         - uninstall one or more packages and its dependencies
#
alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
# remote server
source ~/.bash_ssh
export PERL_LOCAL_LIB_ROOT="/home/highway/perl5";
export PERL_MB_OPT="--install_base /home/highway/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/highway/perl5";
export PERL5LIB="/home/highway/perl5/lib/perl5/x86_64-linux-thread-multi:/home/highway/perl5/lib/perl5";
export PATH="/home/highway/perl5/bin:$PATH";
export EDITOR=emacs

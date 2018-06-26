[ ! "$UID" = "0" ] && archey3 -c blue
[  "$UID" = "0" ] && archey3 -c red

PS1="\n${DGRAY}╭─[${LBLUE}\w${DGRAY}]\n${DGRAY}╰─[${WHITE}\T${DGRAY}]${DGRAY}>${BLUE}>${LBLUE}> ${RESET_COLOR}"

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

alias matrix='cmatrix -C green'
alias m='cmatrix -C green'
alias gm='cmatrix -C green'
alias ym='cmatrix -C yellow'
alias bm='cmatrix -C blue'
alias mm='cmatrix -C magenta'
alias cm='cmatrix -C cyan'
alias wm='cmatrix -C white'

# useful stuff
alias ..='cd ..'
alias ...='cd ../..'

alias dev='cd ~/Development'
alias backup=' sh ~/bin/backup_pkgs'

alias grep='grep --color=auto'

alias reload='clear && source ~/.bashrc'

alias cclean='sudo pkgcacheclean 2 -v'
alias git='hub'
alias weechat='screen weechat-curses'
alias irssi='screen irssi'
alias mirror='sudo reflector -c "Canada United States" -f 6 > mirrorlist'

# modified commands
alias home='cd ~'

alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ssh'

# vlc
alias comm='vlc -f ~/community.xspf &'
alias remotecomm='env DISPLAY=:0.0 screen vlc -f ~/community.xspf &'
alias killvlc='env DISPLAY=:0.0 screen sh ~/bin/killvlc.sh'
alias vlckill='sh ~/bin/killvlc.sh'
alias vlckill2='sh ~/bin/killmplayer.sh'
alias monoff='env DISPLAY=:0.0 screen sh ~/bin/monitor_off.sh'
alias monkoff='env DISPLAY=:0.0 screen sh ~/bin/killvlc_now.sh'

# scripts
alias parse='sh ~/bin/FileParser.sh'
alias process='parse'
alias unrars='perl ~/bin/unrar.pl'
alias cleandir='rm -rf ~/input/zzz_EXT/*'
alias unrarcl='unrars && cleandir'
alias unrarpy='python ~/bin/extract/unrar.py && cleandir'
alias unrarall='python ~/bin/extract/unrar_update.py && cleandir'
alias gcreate='sh ~/bin/github.sh'
alias extractall='~/bin/extract/extract_all.sh'

# mount
alias letsgo='back1 open && back2 open && tc3 && back4 open && back5 open && myContainer open'
alias tc1='sudo sh ~/bin/tc1.sh'
alias tc2='sudo sh ~/bin/tc2.sh'
alias tc3='sudo sh ~/bin/tc3.sh'
alias back1='sudo sh ~/bin/backup1.sh'
alias back2='sudo sh ~/bin/backup2.sh'
alias back4='sudo sh ~/bin/backup4.sh'
alias back5='sudo sh ~/bin/backup5.sh'
alias back5='sudo sh ~/bin/backup5.sh'
alias myContainer='sudo sh ~/bin/my_container.sh'
# testing

# dev
alias g11='g++ -std=c++11'
alias g14='g++ -std=c++14'

# backup
alias gameboy='sh ~/bin/gameboy_bu.sh'

# housekeeping
alias movetv='sh ~/bin/move_tv.sh'
alias movevid='sh ~/bin/move_video.sh'
alias unrarclt='unrarcl && movetv'
alias unrarclv='unrarcl && movevid'
#alias fsc='python2 ~/bin/fsc_script.py'
alias fsc='sh ~/bin/fsc_wrapper.sh'
# alias renamecb='sh ~/bin/cbz_to_cbr/cbz_to_cbr.sh'
alias renamecb='python2 ~/bin/cbz_to_cbr/pyRename.py'

# video processing
alias joinavi='mencoder -oac copy -ovc copy -o ~/input/aaaa.avi ~/input/m1.avi ~/input/m2.avi'
alias convert2iso='mkisofs -dvd-video -o AAAA.iso /home/highway/ZZZZ/'

# sshd
alias startsshd='sudo systemctl start sshd.service'
alias stopsshd='sudo systemctl stop sshd.service'
alias statussshd='systemctl status sshd.service'
alias restartsshd='sudo systemctl restart sshd.service'

# ssh
alias localpi='~/bin/ssh_localRaspberry.sh'
alias raspi='sh ~/bin/ssh_raspberry.sh'
alias raspi2='sh ~/bin/ssh_raspberry2.sh'
alias wobblez='sh ~/bin/ssh_wbl.sh'
alias wobblez2='sh ~/bin/ssh_wbl2.sh'
alias compass='sh ~/bin/ssh_work.sh'
alias compass2='sh ~/bin/ssh_work2.sh'
alias granite='sh ~/bin/ssh_granite.sh'
alias what='sh ~/bin/lftp2_box.sh'
alias nmapscan='nmap -sP 192.168.1.1-255'

# games
alias doom1='prboom -iwad doom1.wad'
alias doom2='prboom -iwad doom2.wad'
alias dday='launch-doomsday'

# apps
alias w='wget'
alias e='emacs -nw'
alias es='sudo emacs -nw'
alias v='vim'
alias vs='sudo vim'
alias matlabn='matlab -nojvm -nodesktop'
alias gpp='g++'
alias flex='flexget execute --disable-tracking'

# startx
alias sddmstart='sudo systemctl start sddm.service'
alias startsddm='sudo systemctl start sddm.service'

# teamviewer
alias tvstart='teamviewer --daemon start'
alias tvstop='teamviewer --daemon stop'

# shit
alias y='~/bin/youtube/youtube.sh'
alias yy='~/bin/youtube/youtube_list_id.sh'
alias yyy='~/bin/youtube/youtube_list.sh'

# other
alias graphics='sudo modprobe nouveau'
alias mpvbox='sudo modprobe vboxdrv'
alias rc='e ~/.bashrc'
alias catrc="cat ~/.bashrc | grep"

# system
alias s='sudo'
alias ctl='sudo systemctl'

alias ftpstart='sudo systemctl start vsftpd.service'
alias ftpstop='sudo systemctl stop vsftpd.service'

# updates
alias update='sudo pacman -Syu'
alias syua='pacaur -Syua'         # update aur packages
alias devel='pacaur -Syua --devel' # update devel packages
alias updates='sudo pacman -Syu && pacaur -Syua && cclean && geeh -b'

# enlightenment
alias erestart='env DISPLAY=:0 enlightenment_remote -restart'
alias erest='env DISPLAY=:0 enlightenment_remote -restart'
alias erst='env DISPLAY=:0 enlightenment_remote -restart'

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

# ugh
alias internet='sudo systemctl start network@eno1.service'

# ssh server
source ~/.bash_ssh

# exports
export PERL_LOCAL_LIB_ROOT="/home/highway/perl5";
export PERL_MB_OPT="--install_base /home/highway/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/highway/perl5";
export PERL5LIB="/home/highway/perl5/lib/perl5/x86_64-linux-thread-multi:/home/highway/perl5/lib/perl5";
export PATH="~/perl5/bin:$PATH";
export PATH="~/bin:$PATH";

export JAVA_HOME=/opt/jdk1.8.0_73
export JRE_HOME=/opt/jdk1.8.0_73/jre
export PATH=${PATH}:$HOME/bin:JAVA_HOME:JRE_HOME
export GOPATH=/home/highway/langs/Go
export PATH=${PATH}:/home/.config/log4j2.xml
export PATH=${PATH}:/home/highway/android-sdk-linux/platform-tools:/home/highway/android-sdk-linux/tools:/home/highway/bin;
export PATH=${PATH}:/usr/local/apache-log4j-2.5
export CLASSPATH=/usr/local/apache-log4j-2.5-bin/log4j-api-2.5.jar
export CLASSPATH=${CLASSPATH}:/usr/local/apache-log4j-2.5-bin/log4j-core-2.5.jar
export CLASSPATH=${CLASSPATH}:/usr/local/apache-log4j-2.5-bin/log4j-1.2-api-2.5.jar
export EDITOR=emacs

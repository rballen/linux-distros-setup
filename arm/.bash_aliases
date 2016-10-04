## packages
alias whatalias="alias -p | cut -d= -f1 | cut -d' ' -f2"

alias install='sudo apt-get install -y'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias autoremove='sudo apt-get autoremove'
alias uninstall='sudo apt-get remove --purge'
alias add='sudo add-apt-repository'
alias search='apt-cache search'
alias clean='sudo apt-get clean'
alias autoclean='sudo apt-get autoclean'

## ls
alias ll='ls -Alh'                       # l = long list, A = not . or .., h = human readable size
alias ls='ls -F --color=auto'            # F = append */=>@| to entries(file,dir,sym link)
alias lsc='ls | wc -l'                    # count files
alias lsd='ls -d */'                      # list dirs only
alias l.='ls -d .*'                       # show hidden files
#alias l='ls -CF'
alias listnew='ls -ltc'
alias nc='--color=no'

## grep
alias grep='grep -ir --color=auto'
alias fgrep='fgrep -ir --color=auto'
alias egrep='egrep -ir --color=auto'

## app aliases
alias vi='vim'
alias less='less -r'
alias ls-node='ls ~/.nvm/versions/node/"$(node --version)"/lib/node_modules/'  # cant read ls npm -g
# youtube-dl: list (ytl), video(ytv), music(ytm) youtube-dl -U (update)
alias ytl='youtube-dl -F'
alias ytv='youtube-dl --prefer-ffmpeg --output "$HOME/%(title)s.%(ext)s" --restrict-filenames -f 18/22'
alias ytm='youtube-dl --prefer-ffmpeg --output "$HOME/%(title)s.%(ext)s" --restrict-filenames --extract-audio --audio-format mp3 --audio-quality 5'


### docker
alias docker-stop='docker rm -v $(docker ps -a -q -f status=exited)'
#delete dangling images
alias docker-del='docker rmi $(docker images -q -f dangling=true)'

### webdev
alias rip='wget -E -H -k -K -p -U mozilla'      # THE wget that everyone wants :)
# wget -r -nc -p -k -np --user-agent="Mozilla/5.0 (Windows NT 6.2; rv:22.0) Gecko/20130405 Firefox/23.0" --html-extension --restrict-file-names=windows --domains=example.com example.com http://flattyshadow.com/

#    -r: recursive download
#    -nc: no-clobber or skip downloads on existing files
#    -p: get all page requisites to properly display html
#    -k: convert links to working local files
#    -np: don’t ascend to parent directory
#    –user-agent: as AGENT
#    –html-extension: make sure downloaded files will have its corresponding suffixes
#    –restrict-file-names: filenames that will also work on windows
#    –domains: domain/s to be followed

## debugging
alias size='df -h'
alias whatport='netstat -tulpn'
alias free='free -m'
alias myports='netstat –lp --inet'
alias stats='dstat -cdnpmgs --top-bio --top-cpu --top-mem'
alias myip='curl icanhazip.com'
alias myps='ps -eo pid,cmd,%cpu,%mem,stat'

echo 'bash_aliases'

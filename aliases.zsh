# Need to do this so you use backspace in screen...I have no idea why
# alias screen='TERM=screen screen'

# listing files
# alias l='ls -alh'
alias ltr='ls -ltr'
alias lth='l -t|head'
alias lh='ls -Shl | less'
# alias tf='tail -f -n 100'
# alias t500='tail -n 500'
# alias t1000='tail -n 1000'
# alias t2000='tail -n 2000'

# etc

# editing shortcuts
# alias m='mvim --remote-silent'

# grep for a process
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# alias h?="history | grep "

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'

# start tmux in utf8
alias t='tmux -u'

# Editors
alias o=open
alias m=subl

# Ruby & Node
alias be='bundle exec'
alias r='rails'
alias bs='broccoli serve'
alias e='ember'
alias eg='ember generate'
alias es='ember server'
alias ns='npm start'
alias nom='npm cache clear && rm -rf node_modules && npm install'
alias bom='bower cache clean && rm -rf bower_components && bower install'

# Git
alias git="hub"
alias g="git"
alias s='git status'
alias co='git checkout'
alias c='git commit'
# alias up='git pull --ff-only'
alias up='remote update'
alias b='git branch'
alias lg='git log -p'
alias aa='git add --all'
alias d='git diff'
alias df='git diff'
alias dc='git diff --cached'
alias f='git fetch'
alias gf='git fetch && git status'

alias cdb='base=$(git rev-parse --show-cdup) && cd $base'

alias git-scoreboard="git log | grep '^Author' | sort | uniq -ci | sort -r"

function github-init () {
  git config branch.$(git-branch-name).remote origin
  git config branch.$(git-branch-name).merge refs/heads/$(git-branch-name)
}

function github-url () {
  git config remote.origin.url | sed -En 's/git(@|:\/\/)github.com(:|\/)(.+)\/(.+).git/https:\/\/github.com\/\3\/\4/p'
}

# Seems to be the best OS X jump-to-github alias from http://tinyurl.com/2mtncf
function github-go () {
  open $(github-url)
}


# File extensions
# alias -s js='subl'
alias -s rb='subl'
alias -s erb='subl'

# Fun stuff
alias richard='sudo'
alias fuckyou='killall'

# Etc
alias cask='brew cask'

# unalias mysql

alias mps="mix phoenix.server"
alias go="jump"

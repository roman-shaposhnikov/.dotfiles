source ~/.config/shell/aliases/git.sh

# Alias
alias md='mkdir'
alias rmd='rm -r'
alias th='touch'
alias cl='clear'
alias l='ls -la'
alias bat='batcat'
alias clip='xclip -sel clip'
alias m='make'
alias ms='make -s'
alias j='just'

## Nono
alias ni="nono run --profile npm-i --allow-cwd --allow-command npm --rollback\
  -- npm i"

alias nci="nono run --profile npm-i --allow-cwd --allow-command npm --rollback\
  -- npm ci"

## Docker
alias d='docker'
alias ds='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Image}}"'
alias dsa='ds -a'
alias di='docker image'
alias dc='docker container'
alias dn='docker network'
alias dcp='docker compose'

## Lazy
alias lg='lazygit'
alias ld='lazydocker'

## Tmux
alias tm='tmux'

## Wireguard
alias wgu='sudo wg-quick up'
alias wgd='sudo wg-quick down'


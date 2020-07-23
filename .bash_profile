PS1="\u@local:\W$ "

export PATH="$HOME/.cargo/bin:$PATH"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../.."
alias deit="docker exec -it"
alias dcup="docker-compose up"

#source /Users/Me/.ghcup/env
#
## opam configuration
#test -r /Users/Me/.opam/opam-init/init.sh && . /Users/Me/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# tmux truecolor override
alias tmux="env TERM=xterm-256color tmux"

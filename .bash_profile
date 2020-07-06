PS1="\u@local:\W$ "

export PATH=$PATH:/usr/include
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/Users/Me/Library/Python/3.7/bin 

export PATH="$HOME/.npm_packages/bin:$PATH"
export PATH="$(yarn global bin):$PATH"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/emsdk-portable:$PATH"
export PATH="$HOME/emsdk-portable/clang/fastcomp/build_incoming_64/bin:$PATH"
# export PATH="$HOME/emsdk-portable/node/8.9.1_64bit/bin:$PATH"
export PATH="$HOME/emsdk-portable/emscripten/incoming:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../.."
alias deit="docker exec -it"
alias dcup="docker-compose up"

source /Users/Me/.ghcup/env

# opam configuration
test -r /Users/Me/.opam/opam-init/init.sh && . /Users/Me/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# tmux truecolor override
alias tmux="env TERM=xterm-256color tmux"

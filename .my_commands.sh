#!/usr/bin/zsh
emulate -LR zsh # reset zsh options
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

function create() {
    cd
    cd /mnt/d/workspace/$1
    git init
    git remote add origin git@github.com:julianstephens/$1
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

# source ~/.my_commands.sh
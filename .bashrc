#### path ###########################################################
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export SCREENDIR=$HOME/.screen

#### color ##########################################################
eval `dircolors ~/.colorrc`
alias ls='ls --color=auto'

#### cmd alias ######################################################
alias ll='ls -al'
alias cls='clear'
alias j='jobs -l'
alias d='dirs -v'
alias rm='rm -i'
alias digi='digi_moji time -f=bg_cyan'

#### python alias ###################################################
alias python='python3'
alias pip='pip3'

#### history ########################################################
export HISTSIZE=100000
export HISTFILESIZE=100000

#### prompt #########################################################
export PS1="\u@`hostname`[\w](\#)(\t)$ "


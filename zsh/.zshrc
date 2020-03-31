# .zshrc

### Pure prompt theme setup
# https://github.com/sindresorhus/pure
# https://gist.github.com/guillevc/616a3f25e5175c88d5bc84e5a257e580

# if oh-my-zsh
ZSH_THEME=""

autoload -U promptinit; promptinit

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

# oh-my-zsh overrides the prompt so Pure must be activated after source $ZSH/oh-my-zsh.sh
prompt pure


zmodload zsh/zprof
# https://medium.freecodecamp.org/how-you-can-style-your-terminal-like-medium-freecodecamp-or-any-way-you-want-f499234d48bc
# https://github.com/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'

# plugins
# https://github.com/zsh-users/antigen
source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle dirhistory
#antigen bundle jsontools
#antigen bundle rbenv
antigen theme raziel1121/env zsh-themes/jono
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

ZSH_THEME="powerlevel9k"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(dirhistory jsontools git zsh-autosuggestions zsh-syntax-highlighting)

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Do not share history across sessions
unsetopt share_history

source ~/bin/tmuxinator.zsh

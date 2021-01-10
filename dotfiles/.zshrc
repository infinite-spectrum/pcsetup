# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

PCSETUP="${HOME}/.pcsetup"

export ZSH="/${HOME}/.oh-my-zsh"
export GOPATH=${HOME}/go
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export GOPATH=${GOPATH}:${HOME}/workspace/go

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_GO_VERSION_FOREGROUND='015'
POWERLEVEL9K_GO_VERSION_BACKGROUND='110'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status go_version background_jobs)


## Antigen setup -----------------------------------------------------
# If there is cache available
if [[ -f ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload ]]; then
  # Load bundles statically
  source ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload

  # You will need to call compinit
  autoload -Uz compinit
  compinit -d ${HOME}/.zcompdump
else
  # If there is no cache available do load and execute antigen
  source ${PCSETUP}/antigen.zsh

  # Load the oh-my-zsh's library.
  antigen use oh-my-zsh

  # Bundles from the default repo (robbyrussell's oh-my-zsh).
  antigen bundle git
  antigen bundle wd
  antigen bundle shrink-path

  # antigen bundle heroku
  antigen bundle pip
  antigen bundle golang
  # antigen bundle lein
  antigen bundle command-not-found

  # Syntax highlighting bundle.
  antigen bundle zsh-users/zsh-syntax-highlighting

  # Load the theme.
  # antigen theme agnoster
  antigen theme bhilburn/powerlevel9k powerlevel9k

  # Tell Antigen that you're done.
  antigen apply
fi
### ------------------------------------------------------------------

source ${PCSETUP}/scripts/aliases
source ${PCSETUP}/scripts/functions

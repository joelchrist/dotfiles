source ~/dotfiles/bash/.bash_prompt
# Set path
PATH=/usr/local/sbin:$PATH
export PATH="$HOME/bin:$PATH";

# Load z directory switcher
if [ -f ~/dotfiles/shell/z.sh ]; then
  . ~/dotfiles/shell/z.sh
fi

# Load bash completion for brew binaries
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Set path using pathhelper.
eval $(/usr/libexec/path_helper -s)

# Set NVM related things
PATH=$HOME/.nvm/versions/node/v6.9.4/bin:$PATH
export NVM_DIR="$HOME/.nvm"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Source ~/.bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Set op k8s prompt
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1) '$PS1
kubeoff

# Load envtools
if [ -r ~/dotfiles/shell/shell-libs/envtools.sh ]; then
  source ~/dotfiles/shell/shell-libs/envtools.sh
fi

# Load envtools completion for bash
if [ -r ~/dotfiles/shell/shell-libs/envtools-completion-bash.sh ]; then
  source ~/dotfiles/shell/shell-libs/envtools-completion-bash.sh
fi

# Load aliases
if [ -r ~/dotfiles/shell/.aliases  ]; then
  source ~/dotfiles/shell/.aliases
fi

# Load functions
if [ -r ~/dotfiles/shell/.functions  ]; then
  source ~/dotfiles/shell/.functions
fi

load_env global
load_env machines/$(hostname -s)

link_ssh_agent

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/joelchrist/.sdkman"
[[ -s "/Users/joelchrist/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/joelchrist/.sdkman/bin/sdkman-init.sh"

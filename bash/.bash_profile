PATH=/usr/local/sbin:$PATH
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

if [ -f ~/dotfiles/bash/z.sh ]; then
  . ~/dotfiles/bash/z.sh
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export EDITOR=nvim


function tm() {
  if [ "$1" = "ls" ]; then
    tmux list-sessions;
  else
    tmux attach -t $1 || tmux new -s $1;
  fi
}
eval $(/usr/libexec/path_helper -s)

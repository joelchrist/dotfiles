PATH=/usr/local/sbin:$PATH
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

eval $(/usr/libexec/path_helper -s)

PATH=$HOME/.nvm/versions/node/v6.9.4/bin:$PATH
export NVM_DIR="$HOME/.nvm"

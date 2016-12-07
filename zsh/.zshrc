# Created by newuser for 5.2
autoload -Uz promptinit
promptinit
prompt damoekri
unalias http-serve
alias pacclean="sudo pacman -Rsn `pacman -Qdtq`"

function forever() {
	while true; do
		$@;
	done
}

function isrunning() {
    ps aux | grep $@;
}

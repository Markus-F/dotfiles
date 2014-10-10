for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/bin/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# append to the history file, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# init rbenv
eval "$(rbenv init -)"

# init bash-completion
if [ -f 'brew --prefix'/etc/bash_completion ]; then
	.'brew --prefix'/etc/bash_completion
fi

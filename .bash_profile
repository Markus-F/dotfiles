for file in ~/.{path,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# append to the history file, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/markusfiedel/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/markusfiedel/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/markusfiedel/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/markusfiedel/Downloads/google-cloud-sdk/completion.bash.inc'; fi

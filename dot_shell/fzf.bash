# Setup fzf
# ---------
if [[ ! "$PATH" == */home/hk28/.fzf/bin* ]]; then
	PATH="${PATH:+${PATH}:}/home/hk28/.fzf/bin"
fi

# catppuccin
export FZF_DEFAULT_OPTS=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

ed() {
	vim $(fzf)
}

edf() {
	# 1. Search for text in files using Ripgrep
	# 2. Interactively narrow down the list using fzf
	# 3. Open the file in Vim
	rg --color=always --line-number --no-heading --smart-case "${*:-}" |
		fzf --ansi \
			--color "hl:-1:underline,hl+:-1:underline:reverse" \
			--delimiter : \
			--preview 'bat --color=always {1} --highlight-line {2}' \
			--preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
			--bind 'enter:become(nvim {1} +{2})'
}

# Man without options will use fzf to select a page
function man() {
	MAN="/usr/bin/man"
	if [ -n "$1" ]; then
		$MAN "$@"
		return $?
	else
		$MAN -k . | fzf --reverse --preview="echo {1,2} | sed 's/ (/./' | sed -E 's/\)\s*$//' | xargs $MAN" | awk '{print $1 "." $2}' | tr -d '()' | xargs -r $MAN
		return $?
	fi
}

eval "$(fzf --bash)"

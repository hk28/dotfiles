function sc() {
	executable=$(find ~/scala.dev/*.sh -maxdepth 1 -perm -111 -type f | fzf --height ~50%)
	$executable
}

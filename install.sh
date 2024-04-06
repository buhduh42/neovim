#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

nvim_dir="${HOME}/.config/nvim"

perform_backup() {
	if ! test -e "${nvim_dir}"; then
		return
	fi
	echo "would you like to backup ${nvim_dir} to ${nvim_dir} y/n?"
	while :
	do
		do_backup=$(</dev/stdin)
		case "${do_backup}" in
			y)
				cp -a "${nvim_dir}" "${nvim_dir}.bak"
				break
			;;
			n)
				break
			;;
			*)
				echo "enter 'y' or 'n' only"
			;;
		esac
	done
}

perform_backup

ln -s "${DIR}" "${HOME}/.config/nvim"

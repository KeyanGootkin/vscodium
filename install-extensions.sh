#!/bin/bash

update() {
	sed -i.backup '14,$d' $0 # make sure 14 is the right first line
	codium --list-extensions | xargs -L 1 echo codium --force --install-extension >> $0
}

while getopts "u" flag; do
	case "$flag" in
		u) update; echo "updating extensions list... git push to share with other devices..."
	esac
done

codium --force --install-extension aaa-lt.charmed-nest-icons
codium --force --install-extension jeanp413.open-remote-ssh
codium --force --install-extension luma.jupyter
codium --force --install-extension mkhl.shfmt
codium --force --install-extension ms-python.black-formatter
codium --force --install-extension ms-python.debugpy
codium --force --install-extension ms-python.pylint
codium --force --install-extension ms-python.python
codium --force --install-extension ms-python.vscode-python-envs
codium --force --install-extension ms-toolsai.jupyter
codium --force --install-extension ms-toolsai.jupyter-keymap
codium --force --install-extension ms-toolsai.jupyter-renderers
codium --force --install-extension ms-toolsai.vscode-jupyter-cell-tags
codium --force --install-extension ms-toolsai.vscode-jupyter-slideshow
codium --force --install-extension ni3rav.andromeda-night
codium --force --install-extension njpwerner.autodocstring
codium --force --install-extension pkief.material-product-icons
codium --force --install-extension trybick.terminal-zoom

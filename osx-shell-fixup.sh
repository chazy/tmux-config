#!/bin/zsh
FIXUP=$(which reattach-to-user-namespace)

if [ ! -z "$FIXUP" -a -x "$FIXUP" ]; then
	exec $FIXUP -l zsh
else
	exec zsh
fi

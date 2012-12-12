#!/bin/sh
FIXUP=$(which reattach-to-user-namespace)

if [ ! -z "$FIXUP" -a -x "$FIXUP" ]; then
	exec $FIXUP -l $SHELL
else
	exec $SHELL
fi

#!/bin/sh

for file in [^.]* ; do
    if [ $file = "install.sh" ]; then
	continue
    fi

    ln -s "/$HOME/dev/dotfiles/$file" "/$HOME/.$file"
done

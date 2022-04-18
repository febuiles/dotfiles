#!/bin/sh

for file in [^.]* ; do
    if [ $file = "install.sh" ]; then
	continue
    fi
    
    cp "$file" "/$HOME/.$file"
done

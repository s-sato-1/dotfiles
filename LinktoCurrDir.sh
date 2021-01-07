#!/bin/bash

echo '++ BEGIN'

lis=(
    ".bash_profile"
    ".bashrc"
    ".colorrc"
    ".gemrc"
    ".gitconfig"
    ".profile"
    ".sqliterc"
    ".vimrc"
)

for f in "${lis[@]}"; do
    rm -f ../${f}
    ln -s ~/Dot-Files/${f} ../

    if [ $? -gt 0 ]; then
	echo 'err.'
        break
    fi
    echo ${f} linked.
done

echo '++ END'


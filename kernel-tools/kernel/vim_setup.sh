#!/bin/bash

# Setup suggested by:
# https://kernelnewbies.org/FirstKernelPatch

cat <<EOF > ~/.vimrc
filetype plugin indent on
syntax on
set title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
EOF


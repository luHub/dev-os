#!/bin/bash

vxy='v6.x'
xyz='6.12.8'

# Download and install tools
sudo apt-get install make
sudo apt-get install imagemagick graphviz dvipng python3-venv gcc latexmk librsvg2-bin texlive-lang-chinese texlive-xetex
sudo apt-get install python3-sphinx

# Download and install Kernel
mkdir src
wget -P src  www.kernel.org/pub/linux/kernel/$vxy/linux-$xyz.tar.gz
cd src && tar xvzf linux-$xyz.tar.gz 

# Generate Documentation
cd linux-$xyz && make pdfdocs


echo "Please read the README file on top directory as a starting point. Exiting"

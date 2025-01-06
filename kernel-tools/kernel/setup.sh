#!/bin/bash

vxy='v6.x'
xyz='6.12.8'

mkdir src
wget -P src  www.kernel.org/pub/linux/kernel/$vxy/linux-$xyz.tar.gz
cd src && tar xvzf linux-$xyz.tar.gz 

#!/bin/bash

# A simple way to run a patch, for a better set of scripts see Kernel README.
# Patch are .diff or .patch files
folder=
patch=
url='https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.10.tar.xz'

#Download Patch
wget $url 

#Verify Patch
tar -xf $patch
patch --dry-run -p1 < $patch_path

#Apply Patch
#xz $patch | patch p1

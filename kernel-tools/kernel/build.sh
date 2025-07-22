#!/bin/bash


make -j$(nproc)
make modules_install
make install

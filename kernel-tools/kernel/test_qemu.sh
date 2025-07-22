#!/bin/bash


qemu-system-x86_64 -kernel arch/x86/boot/bzImage -append "console=ttyS0" -nographic

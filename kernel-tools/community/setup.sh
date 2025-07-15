#!/bin/bash

echo "Installing mail client"

sudo apt-get install mutt
sudo apt-get install msmtp 

echo "Creating muttrc in $HOME" 

touch ~/.muttrc

echo "Configure muttrc, see examples in: https://github.com/muttmua/mutt/blob/master/contrib/sample.muttrc-starter"

echo "Configure msmtp, see msmtp examples in: https://github.com/marlam/msmtp"




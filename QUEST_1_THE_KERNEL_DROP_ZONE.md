# Side Quest "Linux Kernel" selecting a Drop Zone

There is now better path than going with friends, so as seasoned developer and with seasoned developers as friends and being electrical engineers the safest place to
start seems to be in "Drivers", later of course we can move to other areas but as a starting point given the knowledge according to my friend, chat GTP, and common sense
this is a good place to start. 

#### Drivers

From "Drivers" which driver. We are going to check ones related with industrial control:
- Modbus 
- I2C 
- SPI 
- UART
- GPIO
- PCIe-based


### First Place

The suggested place to familiarize with Kernel patching for us will be:

```
/drivers/staging/
```

To find out more information, like TODOS, Maintainers mails lists:

```
./scripts/checkpatch.pl --strict --file [file_name]
./scripts/get_maintainer.pl [file_name]
```

<<<<<<< HEAD
In 2026 patches for drivers should be submitted to stag-next branch
```
git clone https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
git branch -r
git checkout -b staging-next Origin/staging-next
```
From https://tobin.cc/blog/kernel-dev-1/ a script like this one is useful to find something to patch:

```
./scripts/checkpatch.pl -f --terse --strict --show-types drivers/staging/FOO/*.c
=======
Copy your config

```
cp /boot/config-`uname -r`* .config
CONFIG_LOCALVERSION="[version_name]"
make menuconfig
>>>>>>> cdb31ce93d84e97944ee1d52480ee3faede0abc6
```



<<<<<<< HEAD


=======
>>>>>>> cdb31ce93d84e97944ee1d52480ee3faede0abc6

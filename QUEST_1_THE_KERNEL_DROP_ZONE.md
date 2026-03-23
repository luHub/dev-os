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

In 2026 patches for drivers should be submitted to stag-next branch
```
git clone https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
git branch -r
git checkout -b staging-next Origin/staging-next
```
From https://tobin.cc/blog/kernel-dev-1/ a script like this one is useful to find something to patch:

```
./scripts/checkpatch.pl -f --terse --strict --show-types drivers/staging/FOO/*.c
```

To config Kernel

```
cp /boot/config-`uname -r`* .config
CONFIG_LOCALVERSION="[version_name]"
make menuconfig
```

Check checkpatch options

```
./scripts/checkpatch.pl --help
```

## Subscribe to linux stag mail list




##  Submit your first patch journey 

## V1:

###1
 Read all the emails. For some weeks read all the emails to get a practical understanding on what is a good patch, and what is not.

###2 
 Setup property your email:
 - Use a real name.
 - Found a small patch todo. Just a small change. 
 - Do it against the right branch, circa 2026 is stag-next.
 - Sent the email to your self first to test and review.

###3

1. Identify a Target, you can find TODOs. Example:
```
cat drivers/staging/rtl8723bs/TODO
```

2. Do only one change per patch
3. Run ./scripts/checkpatch.pl your_patch.patch
4. Run sparse analysis make C=1 or C=2
5. Compile Test
6. Clear Commit Message:
```
Subject: staging: <driver_name>: <summary>
Body: Explain what you changed and why
Sign-off: if is a checkpatch warning, explain which one.
```
7. git format-patch
8. git send-email
9. scripts/get_maintainer.pl -f drivers/staging/<driver_name>/.
10. or use b4

## V2:

1. git commit --amend or git rebase -i
2. git format-patch -v 2 HEAD~1 
3. Add a changelog: Example
```
Signed-off-by: Your Name <email@example.com>
---
Changes in v2:
- Fixed typo in the commit message as pointed out by [Reviewer Name].
- Simplified the if-statement in driver_main.c.

drivers/staging/your_driver.c | 2 +-
```
4. git send-email --in-reply-to=<Message-ID>



## Code Analysis

```
drivers/staging/rtl8723bs
```

```
core  hal  include  Kconfig  Makefile  os_dep  TODO
```

- check Entry point:
```
./os_dep/sdio_intf.c:module_init(rtw_drv_entry);
```
- check Exit point:
```
./os_dep/sdio_intf.c:module_exit(rtw_drv_halt);
```

```
SDIO (Secure Digital Input Output) Interface 
it represents the layer that allows the WiFi driver to communicate with the hardware over an SDIO bus

sdio_intf is the software component responsible for managing the physical and logical connection between the Linux operating system and the Realtek WiFi chip via the SDIO protocol
```
```
SDIO Protocol: "SDIO Protocol is a widely used Bus for the interfacing modem (device) to the application processor (Host). SDIO Protocol is used for Data exchange between host and device." From: https://www.prodigytechno.com/sdio-protocol
```

```
Summary: files starts with a struct with a vendor id and supported chipset.
Goes on Module device table.
Device Cycle and power management.
```

- include: Global Adapter Structure, It holds the state of the hardware, the buffers, and the locks. 
- core: "Linux request" to "Internal Logic."
- hal: This is the "bare metal" layer. You’ll see the actual hex addresses of the hardware registers being flipped.
- Makefile: How to build it

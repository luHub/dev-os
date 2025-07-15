# Side Quest "Linux Kernel" selecting a Drop Zone

There is now better path than going with friends, so as seasoned developer and with seasoned developers as friends and being electrical engineers the safest place to
start seems to be in "Drivers", later of course we can move to other areas but as a starting point given the knowledge according to my freind, chat GTP, and common sense
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


# dev-os

Adventures in Linux, be aware that is the verbose long-long log. I promise there will be a short-short log later with condensed information. 

## Resurfacing old tablet

As a complete noob in this realm but with some insights about hardware, software and the Dunning–Kruger effect this starts with reverese enginnering at hardware level.
 
### Hardware

After checking [Cracking Open](https://www.youtube.com/watch?v=RAaB-jC85dg). An eye hardware inspection might damage some parts, 
due to the assembly of the tablet, and me. 

#### Attempt 1:
- ```adb``` as primary source of information. See: [tools-android](https://github.com/luHub/dev-os/tree/main/tools-android)

#### Attempt 2:
- Hardware eye inspection as a fallback on another tablet (to avoid breaking this one)


### Specs:

#### Hardware:

```
[ro.product.model]: [GT-N8010]
[ro.product.name]: [p4notewifixx]
[ro.product.device]: [p4notewifiww]
[ro.board.platform]: [exynos4]
[ro.boot.bootloader]: [N8010XXBLK9]
[ro.hardware]: [smdk4x12]
```

### Definitions Map:

```
[ro.hardware]: [smdk4x12]
|--->
[ro.board.platform]: [exynos4]
|--->   
```

#### Software:

```
[ro.build.version.release]: [4.1.2]
|---> Linux Version
```

### Side Quest "Linux Kernel"
- Grasp basics about the Linux Kernel, the only way to learn here is by doing. See "QUEST_1" 

### Code:
Need to Root the device to get more insights of the code.


### Thanks to:

- xda
- stackoverflow
- postmarketOS
- android source code

### References:

https://tldp.org/LDP/lkmpg/2.4/html/index.html (Very old web page, but examples are quite nice)



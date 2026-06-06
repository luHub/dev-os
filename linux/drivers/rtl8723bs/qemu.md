#QEMU

## Install

sudo apt update
sudo apt install qemu-user-static binfmt-support -y
sudo apt install qemu-utils
sudo apt install qemu-system-arm

qemu-img convert -f raw -O qcow2 <imageName>.img  <imageName>.qcow2

sudo apt install kpartx -y


## Debian

qemu-img create -f qcow2 debian_disk.qcow2 25G

### Install

qemu-system-x86_64 \
  -enable-kvm \
  -m 4G \
  -smp 2 \
  -drive file=my_virtual_disk.qcow2,format=qcow2 \
  -cdrom /path/to/your_image.iso \
  -boot d \
  -vga virtio \
  -display gtk

### Run
qemu-system-x86_64 -enable-kvm -m 4G -smp 2 -hda debian_disk.qcow2 -vga virtio


## ARM 64

## ARM 32





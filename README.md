# simple-btrfs-initramfs

Simple initramfs generator tool for mounting multiple devices
BTRFS root filesystems.

Depends on statically linked busybox and btrfs-register.

Assumes that the initrd image is put in /boot/initramfs.img,
that the initrd root is in /usr/local/src/initramfs,
and that the BTRFS root partition is spread among any of the partitions
/dev/sda2, /dev/sdb2, /dev/sdc2, /dev/sdd2, /dev/sde2, /dev/sdf2.

There's no user configuration, and if the above conditions are not
satisfied it *will not* work.

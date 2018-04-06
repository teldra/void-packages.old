# vim: set ts=4 sw=4 et:
msg "Setting up zswap"
#set zram
# set sizes for zram drives
zramctl --find --size 1G
zramctl --find --size 1G

# make it swap
mkswap /dev/zram0
mkswap /dev/zram1

# activate
swapon /dev/zram0
swapon /dev/zram1

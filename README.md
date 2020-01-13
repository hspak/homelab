YAALIS
======

https://raw.githubusercontent.com/hspak/yaalis/master/yaalis

Roughly tested and may work.
This uses settings particular to the way I like my systems setup. Use blindly at
your own risk!

### Internet
If you're on wifi, setup `wpa_supplicant`
```sh
wpa_supplicant -B -i <interface> -c <(wpa_passphrase MYSSID passphrase)
dhcpcd <interface>
```

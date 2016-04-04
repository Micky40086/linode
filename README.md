# Usage

```
$ wget https://github.com/pct/linode/archive/master.zip
$ unzip
```

# Github?

use `hub`

----

# ArchLinux

## Pacman Mirrorlist Generator

https://www.archlinux.org/mirrorlist/
    
## Set Hostname

```
# hostnamectl set-hostname <new-hostname>
```

## Static IP (for nodebalancer)

- 編輯 /etc/netctl/static

```
Description='A basic static ethernet connection'
Interface=eth0
Connection=ethernet
IP=static
Address=('<IP1>' '<IP2>')
#Routes=('192.168.0.0/24 via 192.168.1.2')
Gateway='<GATEWAY>'
DNS=('<DNS1>', '<DNS2>')

## For IPv6 autoconfiguration
#IP6=stateless

## For IPv6 static address configuration
#IP6=static
#Address6=('1234:5678:9abc:def::1/64' '1234:3456::123/96')
#Routes6=('abcd::1234')#Gateway6='1234:0:123::abcd'
```

- 啟用並測試查看、reboot

```
# netctl enable static
# netctl start static
# ifconfig
# reboot
```

# Usage

    $ wget https://github.com/pct/linode/archive/master.zip
    $ unzip
    

# Static IP (for nodebalancer)

1. 編輯 /etc/netctl/static

```
Description='A basic static ethernet connection'
Interface=eth0
Connection=ethernet
IP=static
Address=('IP1' 'IP2')
#Routes=('192.168.0.0/24 via 192.168.1.2')
Gateway='106.186.29.1'
DNS=('DNS1', 'DNS2')

## For IPv6 autoconfiguration
#IP6=stateless

## For IPv6 static address configuration
#IP6=static
#Address6=('1234:5678:9abc:def::1/64' '1234:3456::123/96')
#Routes6=('abcd::1234')#Gateway6='1234:0:123::abcd'
```

2. 啟用並測試查看、reboot

```
# netctl enable static
# netctl start static
# ifconfig
# reboot
```
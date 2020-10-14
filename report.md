1. Попинать утилиты
```
$ hostname
MiWiFi-R4CM-srv

$ host github.io
github.io has address 185.199.110.153
github.io has address 185.199.108.153
github.io has address 185.199.109.153
github.io has address 185.199.111.153

$ dig g.co

; <<>> DiG 9.11.21-RedHat-9.11.21-1.fc32 <<>> g.co
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 13646
;; flags: qr rd ra; QUERY: 1, ANSWER: 6, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;g.co.                          IN      A

;; ANSWER SECTION:
g.co.                   30      IN      A       64.233.164.101
g.co.                   30      IN      A       64.233.164.113
g.co.                   30      IN      A       64.233.164.100
g.co.                   30      IN      A       64.233.164.102
g.co.                   30      IN      A       64.233.164.139
g.co.                   30      IN      A       64.233.164.138

;; Query time: 3 msec
;; SERVER: 192.168.31.1#53(192.168.31.1)
;; WHEN: Wed Oct 14 18:34:08 MSK 2020
;; MSG SIZE  rcvd: 129

$ whois debian.org
[Querying whois.pir.org]
[whois.pir.org]
Domain Name: DEBIAN.ORG
Registry Domain ID: D4227449-LROR
Registrar WHOIS Server: whois.gandi.net
Registrar URL: http://www.gandi.net
Updated Date: 2020-02-08T03:07:39Z
Creation Date: 1999-03-10T05:00:00Z
Registry Expiry Date: 2021-03-10T05:00:00Z
Registrar Registration Expiration Date:
Registrar: Gandi SAS
Registrar IANA ID: 81
Registrar Abuse Contact Email: abuse@support.gandi.net
Registrar Abuse Contact Phone: +33.170377661
Reseller:
Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
Registrant Organization: Software in the Public Interest, Inc. - Debian Project
Registrant State/Province: IN
Registrant Country: US
Name Server: DNS4.EASYDNS.INFO
Name Server: SEC1.RCODE0.NET
Name Server: SEC2.RCODE0.NET
Name Server: NSP.DNSNODE.NET
DNSSEC: signedDelegation
URL of the ICANN Whois Inaccuracy Complaint Form https://www.icann.org/wicf/)
>>> Last update of WHOIS database: 2020-10-14T15:36:06Z <<<

For more information on Whois status codes, please visit https://icann.org/epp

Access to Public Interest Registry WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Public Interest Registry registry database. The data in this record is provided by Public Interest Registry for informational purposes only, and Public Interest Registry does not guarantee its accuracy. This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Public Interest Registry reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy.

The Registrar of Record identified in this output may have an RDDS service that can be queried for additional information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.
```

Определить MAC-адрес
```
$ ifconfig wlp2s0 | grep ether
        ether d4:3b:04:5c:49:e6  txqueuelen 1000  (Ethernet)
```

Отключить и включить обратно сетевой интерфейс
```
# ip link set dev wlp2s0 down 

# ip link set dev wlp2s0 up 
```

Проверить доступность узлов 8.8.8.8, http://www.debian.org
```
$  ping 8.8.8.8 -c1
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=111 time=6.18 ms

--- 8.8.8.8 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 6.183/6.183/6.183/0.000 ms

```
$ ping debian.org -c1
PING debian.org (149.20.4.15) 56(84) bytes of data.
64 bytes from mirror-isc3.debian.org (149.20.4.15): icmp_seq=1 ttl=56 time=292 ms

--- debian.org ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 292.441/292.441/292.441/0.000 ms
```

Отобразить трассу до узла http://www.ubuntu.com
```
$ traceroute www.ubuntu.com
traceroute to www.ubuntu.com (91.189.88.181), 30 hops max, 60 byte packets
 1  XiaoQiang (192.168.31.1)  1.614 ms  1.427 ms  1.297 ms
 2  vlan591.schevchenko.bb.pu.ru (81.89.176.1)  5.666 ms  5.496 ms  5.335 ms
 3  vlan3.kronos.pu.ru (195.70.196.3)  5.149 ms  4.980 ms  4.813 ms
 4  195.70.206.129 (195.70.206.129)  4.650 ms  4.488 ms  4.447 ms
 5  185.1.152.59 (185.1.152.59)  30.968 ms  30.785 ms  30.787 ms
 6  100ge8-2.core1.tll1.he.net (184.104.192.93)  30.623 ms  25.477 ms  25.189 ms
 7  100ge9-2.core1.sto1.he.net (184.104.192.81)  279.026 ms  237.336 ms  237.106 ms
 8  * * *
 9  100ge0-54.core1.ams2.he.net (184.104.192.130)  236.449 ms  236.271 ms  236.106 ms
10  100ge0-31.core2.lon3.he.net (184.104.193.193)  235.944 ms  57.250 ms  57.036 ms
11  184.104.203.50 (184.104.203.50)  56.866 ms  56.702 ms  56.539 ms
12  davybones.canonical.com (91.189.88.181)  56.348 ms  60.387 ms  60.156 ms
```

Отобразить статистику работы сетевых интерфейсов
```
$ netstat -i
Kernel Interface table
Iface             MTU    RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR Flg
lo              65536    69729      0      0 0         69729      0      0      0 LRU
virbr0           1500        0      0      0 0             0      0      0      0 BMU
vmnet1           1500        0      0      0 0           167      0      0      0 BMRU
vmnet8           1500        0      0      0 0           168      0      0      0 BMRU
wlp2s0           1500  2970226      0      0 0        751410      0      0      0 BMRU
```


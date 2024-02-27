;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ukkfarel.net. root.ukkfarel.net. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
; 
@                   IN      NS        ukkfarel.net.

; A Record Kita
@                   IN      A         192.168.78.227
www.ukkfarel.net.      IN      CNAME     ukkfarel.net.

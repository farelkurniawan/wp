;
; BIND reverse data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ukkfarel.net. root.ukkfarel.net. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
; Pointer
@        IN      NS      ukkfarel.net.
227      IN      PTR     ukkfarel.net.
227      IN      PTR     www.ukkfarel.net.
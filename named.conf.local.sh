//
// Do any local configuration here
//

// Consider adding the 1918 zones here, if they are not used in your
// organization
//include "/etc/bind/zones.rfc1918";

zone "ukkfarel.net" {
        type master;
        file "/etc/bind/ukkfarel.net";
};

zone "78.168.192.in-addr.arpa" {
        type master;
        file "/etc/bind/ukkfarel.net.reverse";
};
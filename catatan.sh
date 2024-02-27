sudo ufw enable 
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow https
sudo ufw reload

sudo nano /etc/resolv.conf
sudo resolvectl status
sudo nano /etc/netplan/01-network-manager-all.yaml
sudo netplan apply

/etc/apache2/sites-available

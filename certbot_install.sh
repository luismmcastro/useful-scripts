sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot

sudo certbot certonly

sudo mkdir -p /etc/haproxy/certs

# Change domain name for your domain
DOMAIN='example.com' sudo -E bash -c 'cat /etc/letsencrypt/live/$DOMAIN/fullchain.pem /etc/letsencrypt/live/$DOMAIN/privkey.pem > /etc/haproxy/certs/$DOMAIN.pem'
sudo chmod -R go-rwx /etc/haproxy/certs

# Use template certbot/certbot_renew.sh
sudo nano /usr/local/bin/renew.sh
sudo chmod u+x /usr/local/bin/renew.sh

# Change filename for your domain and use template certbot/certbot_renew_example.com.conf
sudo nano /etc/letsencrypt/renewal/example.com.conf

# Use template certbot/certbot_renew_cronjob
sudo crontab -e

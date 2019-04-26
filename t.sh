docker run --rm -it -v "/root/letsencrypt/log:/var/log/letsencrypt" -v "/var/www/html/shared:/var/www/" -v "/etc/letsencrypt:/etc/letsencrypt" -v "/root/letsencrypt/lib:/var/lib/letsencrypt" lojzik/letsencrypt certonly --webroot --webroot-path /var/www --email EMAIL -d domain


docker run -ti --rm \
        -v /etc/letsencrypt:/etc/letsencrypt \
        -v /root/:/var/www \
        ekho/certbot certonly \
	    --agree-tos \
	    --webroot \
	    -w /var/www
	    -d arcanine-site.tk \
	    -m "arcanine1450222@gmail.com"
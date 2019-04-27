# my-ssl-setup

* NOTES:

./certbot-auto certonly --webroot -w /root/custom-nginx/html/ -d bubblebees.tk

cp /etc/letsencrypt/live/arcanine-site.tk/*.pem letsencrypt/

cp /etc/ssl/certs/*pem certs/

docker run --name my-nginx -p 80:80 -p 443:443 -d -v /root/custom-nginx/html/:/usr/share/nginx/html my-nginx

docker run --name internal-website -p 80:80 -p 443:443 -d -v /root/internal-website/public/:/usr/share/nginx/html nginx

./certbot-auto  certonly --webroot -w /root/internal-website/public/ -d bubblebees.tk

docker run --name internal-website -p 80:80 -p 443:443 -d -v /root/internal-website/public/:/usr/share/nginx/html -v /root/ssl/nginx-config/:/etc/nginx/conf.d -v /etc/letsencrypt/live/bubblebees.tk/:/etc/letsencrypt/live/bubblebees.tk -v /etc/ssl/certs/:/etc/ssl/certs nginx

cp -r /etc/letsencrypt/ letsencrypt/ && cp /etc/ssl/certs/*pem certs/

docker run --name ssl-nginx -v /root/internal-website/:/usr/share/nginx/html -p 80:80 -p 443:443 -d ssl-nginx

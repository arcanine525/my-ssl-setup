FROM nginx
COPY html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d

COPY letsencrypt/live/bubblebees.tk/fullchain.pem /etc/letsencrypt/live/bubblebees.tk/fullchain.pem
COPY letsencrypt/live/bubblebees.tk/privkey.pem /etc/letsencrypt/live/bubblebees.tk/privkey.pem

COPY letsencrypt/live/internal.bubblebees.tk/fullchain.pem /etc/letsencrypt/live/internal.bubblebees.tk/fullchain.pem
COPY letsencrypt/live/internal.bubblebees.tk/privkey.pem /etc/letsencrypt/live/internal.bubblebees.tk/privkey.pem

COPY letsencrypt/live/madmath.bubblebees.tk/fullchain.pem /etc/letsencrypt/live/madmath.bubblebees.tk/fullchain.pem
COPY letsencrypt/live/madmath.bubblebees.tk/privkey.pem /etc/letsencrypt/live/madmath.bubblebees.tk/privkey.pem

COPY letsencrypt/live/thebongda.tk/fullchain.pem /etc/letsencrypt/live/thebongda.tk/fullchain.pem
COPY letsencrypt/live/thebongda.tk/privkey.pem /etc/letsencrypt/live/thebongda.tk/privkey.pem

COPY letsencrypt/live/admin.thebongda.tk/fullchain.pem /etc/letsencrypt/live/admin.thebongda.tk/fullchain.pem
COPY letsencrypt/live/admin.thebongda.tk/privkey.pem /etc/letsencrypt/live/admin.thebongda.tk/privkey.pem

COPY certs/dhparam.pem /etc/ssl/certs/dhparam.pem
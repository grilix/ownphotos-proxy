FILE="/etc/nginx/nginx.conf"

envsubst < $FILE.template > $FILE && exec nginx -g 'daemon off;'

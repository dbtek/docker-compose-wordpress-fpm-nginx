cd "$(dirname "$0")"
docker run -it --rm --name certbot --mount src=$(pwd)/le/certs,target=/etc/letsencrypt,type=bind --mount src=$(pwd)/le/data,target=/webroot,type=bind certbot/certbot renew --webroot --webroot-path="/webroot"
docker-compose exec nginx nginx -s reload
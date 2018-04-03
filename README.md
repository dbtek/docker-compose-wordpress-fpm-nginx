Docker Environment for Wordpress with FPM & Nginx
===

Run Wordpress through Nginx & PHP FPM effortlessly.


### Install
- Download zip or clone repo. Place files on the host.
- Update config via `.env` file accordingly. **Don't use it as is!**
- Run following.

```bash
# generate SSL certificates with letsencrypt
$ sh ./gencert.sh
# run services
$ docker-compose up -d
```

That's it.

### Renew SSL Certificates
There is no built in service for auto renewal. To renew certs run following:

```bash
$ sh ./renewcert.sh
```

To add auto renewal a cron job can be set up like following.

```
43 6 * * * /path/to/renewcert.sh
```

### Folder Structure
- le/         - Volumes for Letsencrypt certs & files.
- nginx/      - Nginx configuration.
- wp-content/ - Wordpress volume.

### Author 
Ismail Demirbilek - [@dbtek](https://twitter.com/dbtek)

### License
MIT


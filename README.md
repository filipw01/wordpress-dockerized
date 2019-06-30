# Wordpress Dockerised
Docker-compose file for Wordpress, PHP 7.2, MySQL, Nginx and PhpMyAdmin (with wordpress and mysql data exposed as volumes) with simple script for theme installation and Gatsby support.

# Installation 
Create in root folder your Gatsby project called `wp-gatsby`

then run 

`
docker-compose up
`

Default Wordpress homepage has been replaced with Gatsby homepage. To access wp-admin simply go to http://localhost:8000/wp-admin/

Keep in mind, that http://localhost:8000/post.php and other urls with PHP file in root are not valid.

**Remember not to call gatsby pages wp-admin etc. because of possible route conflicts**

## To replace default themes with our template (with or without lumberjack) run
`
sudo ./installTheme.sh
`
## Used ports and configuration
PhpMyAdmin: 8080

Wordpress: 8000

Nginx configuration is inside `nginx` folder 

*Enjoy Docker <3*

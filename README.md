# Wordpress Dockerised
Docker-compose file for Wordpress, PHP 7.2, MySQL, Nginx and PhpMyAdmin (with wordpress and mysql data exposed as volumes) with simple script for theme installation.

# To begin just install docker compose and then run 
`
docker-compose up
`
## To replace default themes with our template (with or without lumberjack) run
`
sudo ./installTheme.sh
`
## Used ports and configuration
PhpMyAdmin: 8080

Wordpress: 8000

Nginx configuration is inside `nginx` folder 

*Enjoy Docker <3*

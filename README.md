# Wordpress Dockerised
Docker-compose file for Wordpress with
* PHP 7.2
* MySQL 5.7
* Nginx 
* PhpMyAdmin 

# Requirements

## Windows 10 Professional or Enterprise
* Docker Desktop for Windows installed

## Mac OS Sierra 10.12 or above
* Docker Desktop for Mac installed

## Linux
* Docker installed (suggested using `apt`, `apt-get`, `yum`, `dnf` etc.)
* Docker-compose installed (suggested using `pip`)

**Details about installation can be [found here](https://docs.docker.com/compose/install/)**

# Structure
* `nginx` folder contains nginx configuration files
* `docker-compose.yml` file contains all the services configuration, here you can change exposed ports, wordpress and database passwords and much much more
* `php.ini` is php configuration file, here you can change php timeout and other php stuff
* `installTheme.sh` is a shell script, that installs boilerplate theme and removes it's git origin. Remember to run it as superuser with `sudo ./installTheme.sh`

# Running
Simply run the following command in your terminal

`
docker-compose up
`

This, should create three folders `logs`, `wordpress` and `mysql`
* `logs` contains nginx error and access logs
* `wordpress` contains whole wordpress folder (the one including wp-config.php and wp-content)
* `mysql` folder contains database and should not be modified manually

To stop docker just use CTRL+C

You can also run docker-compose in a detached mode to hide all the guts

`
docker-compose up -d
`

then to stop docker run

`
docker-compose down
`

If you want to restart docker-compose with just one command use

`
    docker-compose restart
`

Once you've run docker containers they will restart after your computer boots up. You can disable it by deleting `restart: always` inside docker-compose.yml 
## Executing commands inside container
You can get list of currently running containers with 

`
docker ps
`

To execute something in one of these containers run 

`
docker exec -it name_of_your_container bash
`

## Used ports
* PhpMyAdmin: 8080
* Wordpress: 8000

# Common Error solutions
## Execution time error / Timeout error
Change:
* `max_execution_time` inside `php.ini`
* `fastcgi_read_timeout` inside `nginx/wordpress.conf`

## File upload error / File too big
Change:
* `upload_max_filesize` inside `php.ini`
* `client_max_body_size` inside `nginx/wordpress.conf`

## Post (upload) error / File too big
Change:
* `post_max_size` inside `php.ini`


*Enjoy Docker <3*
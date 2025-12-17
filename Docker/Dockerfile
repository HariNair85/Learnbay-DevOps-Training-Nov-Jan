FROM ubuntu:latest

WORKDIR /app

RUN apt update -y 

RUN apt install apache2 -y   # apache2 web server root location is /var/www/html and default port is 80

COPY . /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]   # apachectl2 is conrol commands for apache2 server , used to start , stop , restart the apache2 server 
                                        # -D is runtie varible 
                                        # FOREGROUND is used to run the apache2 server in foreground mode and  hey apache do not run container as a daemon but keep it attached to the terminal

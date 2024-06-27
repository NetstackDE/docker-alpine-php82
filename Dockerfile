FROM alpine:latest
MAINTAINER Andreas Pfeiffer - Netstack <pfeiffer@netstack.de>

#Install PHP
RUN apk add php82 php82-gd php82-mysqli php82-zip php82-sodium php82-tokenizer php82-mbstring php82-intl php82-curl php82-xml php82-pdo php82-phar php82-fileinfo php82-dom php82-xmlwriter php82-xmlreader php82-session php82-sqlite3 php82-pdo_mysql

#Install Bash, git & curl
RUN apk add bash 
RUN apk add git
RUN apk add curl

#Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["/bin/bash"]

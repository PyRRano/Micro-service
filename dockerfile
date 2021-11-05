FROM alpine
RUN apk --no-cache upgrade

RUN apk add --no-cache apache2

#COPY index.html /var/www/localhost/htdocs/
EXPOSE 80

CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
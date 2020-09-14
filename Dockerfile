FROM nginx:stable
EXPOSE 80
COPY ./dist/jenkinsAngular /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf


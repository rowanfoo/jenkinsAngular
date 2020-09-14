FROM nginx:stable
EXPOSE 80
COPY ./dist/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf


FROM nginx:1.17.6-alpine
WORKDIR /var/tmp
COPY . .

CMD [ "sh", "-c", "nginx && sh /var/tmp/reloadnginx.sh $CHECK_HOST" ]
FROM nginx:1.29-alpine

COPY nginx/default.conf nginx/redirects.conf /etc/nginx/conf.d/
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

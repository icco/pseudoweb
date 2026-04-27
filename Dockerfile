FROM nginx:1.30.0-alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/redirects.conf /etc/nginx/snippets/redirects.conf
RUN nginx -t
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

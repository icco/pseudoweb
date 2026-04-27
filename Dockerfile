FROM nginx:1.30-alpine

LABEL org.opencontainers.image.source=https://github.com/icco/pseudoweb
LABEL org.opencontainers.image.description="A git repository for my old blog"

# Base image ships listen 80 in conf.d; remove so only 8080 is served.
RUN rm -f /etc/nginx/conf.d/*.conf

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/redirects.conf /etc/nginx/snippets/redirects.conf
RUN nginx -t
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

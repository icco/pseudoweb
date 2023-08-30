FROM ruby:3

WORKDIR /app

COPY . ./

RUN bundler install

RUN make

EXPOSE 8080

CMD ["ruby", "-run", "-e", "httpd", "./_site", "--port=8080", "--bind-address=0.0.0.0"]

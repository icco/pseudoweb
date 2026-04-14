# Stage 1: Build the Jekyll site
FROM ruby:4.0.2-alpine AS builder

RUN apk add --no-cache build-base git yaml-dev

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

COPY . .
RUN bundle exec jekyll build

# Stage 2: Serve with minimal nginx image
FROM nginx:1.29-alpine

COPY --from=builder /app/_site /usr/share/nginx/html

EXPOSE 8080

RUN sed -i 's/listen\s*80;/listen 8080;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

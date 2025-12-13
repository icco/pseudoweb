# Stage 1: Build the Jekyll site
FROM ruby:3-alpine AS builder

RUN apk add --no-cache build-base git

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

COPY . .
RUN bundle exec jekyll build

# Stage 2: Serve with minimal nginx image
FROM nginx:alpine

COPY --from=builder /app/_site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

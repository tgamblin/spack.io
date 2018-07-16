FROM ruby as build-env
WORKDIR /build
RUN apt-get update && apt-get install -y build-essential ruby-dev nodejs
RUN gem update && gem install bundler
COPY Gemfile *.gemspec ./
RUN bundle install
COPY . ./
RUN JEKYLL_ENV=production bundle exec jekyll build --verbose

FROM nginx:mainline-alpine
COPY --from=build-env --chown=nginx:nginx /build/_site /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

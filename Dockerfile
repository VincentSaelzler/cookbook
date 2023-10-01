FROM ubuntu:latest

# apt packages
RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev git

# ruby packages
RUN gem install jekyll bundler

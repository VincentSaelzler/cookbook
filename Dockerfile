FROM ubuntu:latest

# install app dependencies
RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev git
# bundler is probably not required - i think it's similar to python venv
RUN gem install jekyll bundler

# dir is created if does not yet exist
# WORKDIR /src

# # for now setting as a bind mount so can make more rapid changes
# # COPY index.html .

# # final configuration
# EXPOSE 4000
# the live reload is still not working... maybe because it's a bind mount?
# possible say --watch?
# CMD jekyll serve --host 0.0.0.0 --livereload --incremental
CMD sleep infinity

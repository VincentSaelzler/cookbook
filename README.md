# Cookbook

Recipes I've Tried

# Development Environment
Using the [Visual Studio Code Dev Containers Extension](https://code.visualstudio.com/docs/devcontainers/containers) to develop in a Docker container.
![](/docs/dev-containers-arch.png)
Port forwarding seems to happen automatically once the Jekyll web server is running.

# Deployment
TBD, but most likely steps will be:
1. Ensure that `_site` folder is saved in git repo as part of dev process. The has the con of duplicating all the source files, but makes the requirements of the production server easier.
1. Create a proxmox (not docker) container using ansible/proxmox with web server (e.g. nginx)
1. Clone repo in container

OR....

1. In the proxmox/ansible container install jekyll and 


# Jekyll Dev Process
```sh
# this command only happens once.
# it creates a boilerplate site in the /website directory
# notably the Gemfile is created which itself contains good documentation
jekyll new website
```
When creating new containers, run this command each time. It cannot (easily) be part of the Dockerfile because the dev containers extension hasn't yet created the bind mount to the code repo, so the Gemfile doesn't exist in the container yet.
```sh
cd website && bundle install
# this warning can be safely ignored, because no other users are in the container
# Don't run Bundler as root. Installing your bundle as root will break this application for all non-root users on this machine.
```
Run this command to start the server. Do ctrl-c then rerun to see changes.
```sh
bundle exec jekyll serve
```

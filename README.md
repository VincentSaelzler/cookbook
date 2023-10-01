# Cookbook

Recipies I've Tried

# Development Environment
Using the [Visual Studio Code Dev Containers Extension](https://code.visualstudio.com/docs/devcontainers/containers) to develop in a Docker container.
![](/docs/dev-containers-arch.png)
Port forwarding seems to happen automaticaly once the Jekyll web server is running.

# Deployemnt
TBD, but most likely steps will be:
1. Ensure that `_site` folder is saved in git repo as part of dev process. The has the con of duplicaiting all the source files, but makes the requirements of the production server easier.
1. Create a proxmox (not docker) container using ansible/proxmox with web server (e.g. nginx)
1. Clone repo in container

OR....

1. In the proxmox/ansible container install jekyll and 


# Jekyll Dev Process
```sh
# this command only happens once.
# it creates a boilerplate site in the /myblog directory
# notably the Gemfile is created which itself contains good documentation
jekyll new website
```
When creating new containers, run this command each time.
```sh
bundle install
```
Run this command to actually start the server.
```sh
bundle exec jekyll serve
```

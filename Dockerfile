### App (producer and consumer)

# base image
FROM ubuntu:ubuntu-ruby

# init and install ruby
RUN apt-get update && apt-get install -y curl git
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN echo '/usr/local/rvm/scripts/rvm' >> ~/.bashrc && exec $SHELL
RUN rvm install 2.2-head && rvm --default use 2.2-head


### RabbitMQ Server

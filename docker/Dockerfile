FROM elixir:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

# install inotify-tools
RUN apt-cache policy inotify-tools
RUN apt-get install inotify-tools -y

# install mix
RUN mix local.hex --force

#wire in a startup script
ADD bootstrap.sh /root/bootstrap.sh

CMD /root/bootstrap.sh

# start server  
#CMD mix phx.server

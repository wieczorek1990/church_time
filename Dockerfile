FROM elixir

RUN apt-get update &&\
 apt-get install -y inotify-tools postgresql-client &&\
 rm -rf /var/lib/apt/lists/*

COPY bin /srv/bin
COPY church_time /srv/church_time
WORKDIR /srv/church_time

RUN yes Y | mix archive.install https://github.com/phoenixframework/archives/raw/master/1.3-rc/phx_new-1.3.0-rc.2.ez &&\
 yes Y | mix deps.get

CMD ../bin/wait postgres --\
 yes Y | mix ecto.create &&\
 mix phx.server

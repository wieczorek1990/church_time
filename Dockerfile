FROM elixir

RUN yes Y | mix archive.install https://github.com/phoenixframework/archives/raw/master/1.3-rc/phx_new-1.3.0-rc.2.ez

CMD while :; do :; done

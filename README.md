# Ruby/Faye Websocket Test

A tiny demo using the [Faye](https://github.com/faye/faye-websocket-ruby) WebSocket implementation.


# Running

``` bash
bundle install
foreman start
```

# Running on Heroku

``` bash
heroku create
heroku labs:enable websockets
git push heroku master
heroku open
```

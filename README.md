# Ruby/Faye Websocket Test

Uses the [Faye websocket implementation](https://github.com/faye/faye-websocket-ruby).

# Running

``` bash
$ bundle install
$ PORT=8080 foreman start
```

# Running on Heroku

``` bash
$ heroku create
$ heroku sudo labs:enable websockets
$ git push heroku master
$ heroku open
```

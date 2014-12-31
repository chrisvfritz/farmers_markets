# Farmers Markets App

This is a simple, example Sinatra app that connects to the USDA's API for farmers markets. It is meant to be well-organized, well-tested and anything else a good Sinatra app should be. It's under the MIT license, so students or instructors can take it and adapt it as they wish.

## Run locally

``` bash
rbenv install 2.2.0 # for rbenv
# OR
rvm install ruby-2.2.0 # for rvm
```

``` bash
bundle install
rackup
```

## Deploy to Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/chrisvfritz/farmers_markets)

OR

``` bash
heroku create name-of-my-farmers-markets-app
git push heroku master
```
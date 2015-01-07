# Farmers Markets App

[![Build Status](https://travis-ci.org/chrisvfritz/farmers_markets.svg)](https://travis-ci.org/chrisvfritz/farmers_markets) [![Code Climate](https://codeclimate.com/github/chrisvfritz/farmers_markets/badges/gpa.svg)](https://codeclimate.com/github/chrisvfritz/farmers_markets) [![Test Coverage](https://codeclimate.com/github/chrisvfritz/farmers_markets/badges/coverage.svg)](https://codeclimate.com/github/chrisvfritz/farmers_markets) [![Dependency Status](https://gemnasium.com/chrisvfritz/farmers_markets.svg)](https://gemnasium.com/chrisvfritz/farmers_markets) [![Heroku App](https://img.shields.io/badge/heroku-tc359--farmers--markets-brightgreen.svg?style=flat)](http://tc359-farmers-markets.herokuapp.com/)

This is a simple, example Sinatra app that connects to the USDA's API for farmers markets. It is meant to be well-organized, well-tested and anything else a good Sinatra app should be. It's under the MIT license, so students or instructors can take it and adapt it as they wish.

## Run locally

``` bash
git clone https://github.com/chrisvfritz/farmers_markets.git
cd farmers_markets
```

``` bash
# If you don't have Ruby 2.2.0 installed
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

OR, if you already have the app running locally, you can run this in the app's directory:

``` bash
heroku create name-of-my-farmers-markets-app
git push heroku master
```
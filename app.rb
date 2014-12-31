require 'sinatra'

require_relative 'helpers/farmers_markets_api_helper'

class FarmersMarketsApp < Sinatra::Base
  get '/' do
    erb :index
  end

  helpers FarmersMarketsApiHelper
end

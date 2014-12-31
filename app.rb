require 'sinatra'
require 'rest-client'

class FarmersMarketApp < Sinatra::Base
  get '/' do
    erb :index
  end

  helpers do

    def markets_near(zip)
      markets_in_json = RestClient.get("http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=#{zip}")
      markets = JSON.parse(markets_in_json)

      # Ohh, a map and an OpenStruct and a slice and a to_f - fancy magic indeed!
      # Don't worry, I'll explain these very useful tools in the next slides
      markets = markets['results'].map do |market|
        OpenStruct.new(
          distance: market['marketname'].slice(/^\d+\.\d/).to_f,
          name: market['marketname'].slice(/^\d+\.\d (.+)/, 1)
        )
      end
    end

  end
end
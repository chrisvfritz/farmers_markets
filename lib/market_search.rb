require 'rest-client'
require 'json'

require_relative 'market'

class MarketSearch
  def initialize(params)
    @zip = params[:zip]
  end

  def results
    return [] if parsed_results.first['id'] == 'Error'

    parsed_results.map do |result|
      Market.new result
    end
  end

private

  def parsed_results
    @parsed_results ||= JSON.parse( json_results )['results']
  end

  def json_results
    @json_results ||= RestClient.get "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=#{@zip}"
  end
end

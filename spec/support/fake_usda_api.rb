require 'sinatra/base'

class FakeUsdaApi < Sinatra::Base

  get '/farmersmarkets/v1/data.svc/zipSearch' do
    json_response 200, 'zip_search.json'
  end

private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/fake_usda_api/' + file_name, 'rb').read
  end
end
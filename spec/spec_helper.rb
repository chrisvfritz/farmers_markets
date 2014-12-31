require 'capybara/rspec'
require 'webmock/rspec'
require 'simplecov'

SimpleCov.start

require_relative '../app'

require_relative 'support/fake_usda_api'

FarmersMarketsApp.environment = :test
Bundler.require :default, FarmersMarketsApp.environment

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, /search\.ams\.usda\.gov/).to_rack(FakeUsdaApi)
  end
end

Capybara.app = FarmersMarketsApp
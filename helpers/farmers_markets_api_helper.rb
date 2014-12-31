require_relative '../lib/market_search'
require_relative '../lib/zip_code'

module FarmersMarketsApiHelper

  def markets
    @markets ||= MarketSearch.new(
      zip: current_zip
    ).results
  end

  def current_zip
    @current_zip ||= ZipCode.new(params[:zip]).zip
  end
end
require_relative '../lib/market_search'

module FarmersMarketsApiHelper

  def markets_near_zip(zip)
    MarketSearch.new(zip: zip).results
  end

end
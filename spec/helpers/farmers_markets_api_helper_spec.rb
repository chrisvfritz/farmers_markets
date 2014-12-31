require_relative '../../helpers/farmers_markets_api_helper'

describe FarmersMarketsApiHelper do
  include FarmersMarketsApiHelper

  describe '#markets_near_zip' do

    it 'raises an exception with no arguments' do
      expect{ markets_near_zip }.to raise_error(ArgumentError)
    end

    it 'returns an array of markets' do
      markets = markets_near_zip(48823)

      expect( markets ).to be_an(Array)
      expect( markets.all?{|m| m.kind_of?(Market) } ).to be(true)
    end

  end

end
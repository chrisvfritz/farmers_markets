require_relative '../../helpers/farmers_markets_api_helper'

describe FarmersMarketsApiHelper do
  include FarmersMarketsApiHelper

  describe '#markets' do

    let(:params) { Hash.new }

    context 'when params[:zip] is nil' do

      it 'returns an array of markets by default' do
        expect( markets ).to be_an(Array)
        expect( markets.all?{|m| m.kind_of?(Market) } ).to be(true)
      end

    end

    context 'when params[:zip] is 0' do

      before(:each) { params[:zip] = 0 }

      it 'returns an empty array' do
        expect( markets ).to eq( [] )
      end

    end

  end

  describe '#current_zip' do

    let(:params) { Hash.new }

    context 'when params[:zip] is nil' do

      it 'returns an integer' do
        expect( current_zip ).to be_an(Integer)
      end

      it 'returns 48823 as the fallback zip' do
        expect( current_zip ).to eq(48823)
      end

    end

    context 'when params[:zip] is a valid integer' do

      before(:each) { params[:zip] = 12345 }

      it 'returns the valid integer' do
        expect( current_zip ).to eq( params[:zip] )
      end

    end

    context 'when params[:zip] is an invalid integer (too small)' do

      before(:each) { params[:zip] = -1 }

      it 'returns the fallback zip' do
        expect( current_zip ).to eq(48823)
      end

    end

    context 'when params[:zip] is an invalid integer (too large)' do

      before(:each) { params[:zip] = 999999 }

      it 'returns the fallback zip' do
        expect( current_zip ).to eq(48823)
      end

    end

    context 'when params[:zip] is a valid integer string' do

      before(:each) { params[:zip] = '12345' }

      it 'returns the valid integer string as an integer' do
        expect( current_zip ).to eq( params[:zip].to_i )
      end

    end

    context 'when params[:zip] is an invalid string' do

      before(:each) { params[:zip] = 'this is not an integer' }

      it 'returns the 48823 as the fallback zip' do
        expect( current_zip ).to eq( 48823 )
      end

    end

    context 'when params[:zip] is a valid integer float' do

       before(:each) { params[:zip] = 12345.0 }

      it 'returns the valid integer float as an integer' do
        expect( current_zip ).to eq( params[:zip].to_i )
      end

    end

    context 'when params[:zip] is an invalid float' do

      before(:each) { params[:zip] = 12345.54321 }

      it 'returns the 48823 as the fallback zip' do
        expect( current_zip ).to eq( 48823 )
      end

    end

  end

end
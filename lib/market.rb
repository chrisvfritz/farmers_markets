class Market
  attr_reader :name, :miles

  def initialize(data)
    @name  = parse_name  data['marketname']
    @miles = parse_miles data['marketname']
  end

private

  def parse_name(marketname)
    marketname.slice(/^\d+\.\d (.+)/, 1)
  end

  def parse_miles(marketname)
    marketname.slice(/^\d+\.\d/).to_f
  end
end
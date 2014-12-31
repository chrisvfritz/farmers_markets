class ZipCode
  FALLBACK_ZIP = 48823

  attr_reader :zip

  def initialize(zip)
    @zip = sanitize(zip)
  end

private

  def sanitize(zip)
    case zip
    when Integer, Float, String then send("sanitize_#{zip.class.to_s.downcase}", zip)
    else                             FALLBACK_ZIP
    end
  end

  def sanitize_integer(zip)
    zip >= 0 && zip <= 99999 ? zip : FALLBACK_ZIP
  end
  alias_method :sanitize_fixnum, :sanitize_integer
  alias_method :sanitize_bignum, :sanitize_integer

  def sanitize_float(zip)
    zip % 1 == 0 ? sanitize_integer(zip.to_i) : FALLBACK_ZIP
  end

  def sanitize_string(zip)
    zip =~ /^\d{1,5}$/ ? sanitize_integer(zip.to_i) : FALLBACK_ZIP
  end
end
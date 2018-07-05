# Roman numeral representation for numbers under 10 000
module RomanNumerals
  NUMERALS = 'IVXLCDM..'.split('').freeze

  def self.setup_dict
    @dict = {
      '0' => '',
      '1' => @lo,
      '2' => @lo * 2,
      '3' => @lo * 3,
      '4' => @mid + @lo,
      '5' => @mid,
      '6' => @lo + @mid,
      '7' => @lo * 2 + @mid,
      '8' => @lo * 3 + @mid,
      '9' => @hi + @lo
    }
  end

  def self.to_roman(number)
    digits = number.to_s.split('')

    answer = digits.reduce(result: '', digit: digits.length) do |memo, value|
      result = memo[:result]
      d = memo[:digit]
      @lo = NUMERALS[d * 2  - 2]
      @mid = NUMERALS[d * 2 - 1]
      @hi =  NUMERALS[d * 2]
      setup_dict
      { result: result + @dict[value].reverse, digit: d - 1 }
    end
    answer[:result]
  end
end

# Adds roman numeral representation for numbers under 10 000
class Integer
  include RomanNumerals

  def to_roman
    RomanNumerals.to_roman(self)
  end
end

module BookKeeping
  VERSION = 2
end

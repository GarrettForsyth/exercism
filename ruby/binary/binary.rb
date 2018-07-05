# Transforms binary number represented as a string
# to decimal.
class Binary
  def self.to_decimal(bin)
    raise ArgumentError, 'Input is not a binary number.' unless binary?(bin)
    change_base_to_decimal(bin, 2)
  end

  # Changes a number currrently represented in base n
  # to its decimal representation
  def self.change_base_to_decimal(number, base)
    number.to_s.chars
          .reverse
          .each_with_index.reduce(0) do |decimal_number, (digit, index)|
      decimal_number + digit.to_i * base**index
    end
  end

  def self.binary?(bin)
    !bin.match(/[^01]+/)
  end
end

module BookKeeping
  VERSION = 3
end

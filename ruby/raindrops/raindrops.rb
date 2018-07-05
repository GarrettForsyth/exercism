# Converts a number to a string based on its facotrs.
class Raindrops
  def self.convert(num)
    raindrop = ''
    raindrop += 'Pling' if (num % 3).zero?
    raindrop += 'Plang' if (num % 5).zero?
    raindrop += 'Plong' if (num % 7).zero?
    raindrop.empty? ? num.to_s : raindrop
  end
end

module BookKeeping
  VERSION = 3
end

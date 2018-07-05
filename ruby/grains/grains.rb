# Determines the number of grains on a square of a chessboard
# where the number of grains on each square is double the previous
# square
class Grains
  def self.square(nth_square)
    raise ArgumentError unless nth_square.between?(1, 64)
    2**(nth_square - 1)
  end

  def self.total
    (1..64).reduce(0) { |total, n| total + square(n) }
  end
end

module BookKeeping
  VERSION = 1
end

# Calculates the difference of squares of number
class Squares
  def initialize(number)
    @n = number
    @square_of_sum = nil
    @sum_of_squares = nil
  end

  def square_of_sum
    @square_of_sum ||= (1..@n).reduce(:+)**2
  end

  def sum_of_squares
    @sum_of_squares ||= (1..@n).reduce(0) { |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end

# Given a number, find the sum of all the unique multiples
# of particular numbers up to but not including that number.
class SumOfMultiples
  def initialize(*args)
    @start_numbers = args
  end

  def to(limit)
    return 0 if @start_numbers.nil? || @start_numbers.empty?

    iterations = (limit / @start_numbers.min).floor
    (1..iterations).reduce([]) do |multiples, nth|
      @start_numbers.reduce(multiples) do |multiples, start_number|
        multiple = nth * start_number
        multiples << multiple unless multiples.include?(multiple) || multiple >= limit
        multiples
      end
    end
                   .inject(0, :+)
  end
end

module BookKeeping
  VERSION = 2
end

# Given a string of digits, output alll the contiguous substrings
# of length 'n' in that string.
class Series
  def initialize(numbers)
    @numbers = numbers.split('')
  end

  def slices(len)
    raise ArgumentError if len > @numbers.length
    slices = []
    num_slices = @numbers.length
    num_slices.times do |i|
      slice = @numbers.slice(i..(i + len - 1)).join('')
      slices << slice if slice.length == len
    end
    slices
  end
end

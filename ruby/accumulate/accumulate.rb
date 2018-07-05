# Add accumulate method to Array
class Array
  def accumulate
    return to_enum(:accumulate) unless block_given?
    reduce([]) { |output, element| output << yield(element) }
  end
end

module BookKeeping
  VERSION = 1
end

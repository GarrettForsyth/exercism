# Checks if sentence is a pangram
class Pangram
  @alphabet = ('a'..'z').to_a
  def self.pangram?(string)
    (@alphabet - string.downcase.split('')).empty? ? true : false
  end
end

module BookKeeping
  VERSION = 6
end

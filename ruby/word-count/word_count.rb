# Given a phrase, counts the occurences of each word in that phrase.
class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase
      .downcase
      .gsub(/\s'|'\s/, ' ') # replaces ' before and after whitespace with space
      .split(/[^\w']+/)     # add ' to character group and split on non-words
      .each_with_object(Hash.new(0)) { |k, h| h[k] += 1; }
  end
end

module BookKeeping
  VERSION = 1
end

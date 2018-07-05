# Calculate the moment someone has lived for 10^9 seconds.
class Gigasecond
  GIGASECOND = 1e9

  def self.from(time)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 6
end

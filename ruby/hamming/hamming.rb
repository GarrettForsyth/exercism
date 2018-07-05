# Computes Hamming Number between two DNA strands
class Hamming
  def self.compute(dna1, dna2)
    return 0 if dna1.to_s.empty? || dna2.to_s.empty?
    raise ArgumentError, 'Strands different lengths.' if
      dna1.length != dna2.length

    dna1.split('').zip(dna2.split('')).count do |a, b|
      a != b
    end
  end
end

module BookKeeping
  VERSION = 3
end

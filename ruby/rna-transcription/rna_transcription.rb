# Given a DNA strand, returns its RNA complement
class Complement
  def self.of_dna(dna)
    (dna.split('').map do |nucleotide|
      case nucleotide
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      else return ''
      end
    end).join('')
  end
end

module BookKeeping
  VERSION = 4
end

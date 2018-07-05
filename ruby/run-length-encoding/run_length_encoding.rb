# Compresses strings with long runs of the same character
class RunLengthEncoding
  def self.encode(data)
    return '' if data.empty?
    data.chars.chunk_while { |i, j| i == j }
        .to_a
        .reduce('') do |output, run|
      l = run.length
      output += l.to_s unless l == 1
      output + run[0]
    end
  end

  def self.decode(data)
    return '' if data.empty?
    data.scan(/\d+[a-zA-Z ]|[a-zA-Z ]/).reduce('') do |output, run|
      count = run.length == 1 ? 1 : run[0..-2].to_i
      output + run[-1] * count
    end
  end
end

module BookKeeping
  VERSION = 3
end

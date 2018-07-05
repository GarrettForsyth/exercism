# Bob responds to remarks
class Bob
  def self.hey(remark)
    remark.gsub!(/\s+/, '')
    response = 'Whatever.'
    response = 'Sure.' if question?(remark)
    response = 'Whoa, chill out!' if shouting?(remark)
    response = 'Fine. Be that way!' if silence?(remark)
    response
  end

  def self.shouting?(remark)
    return false if remark.match(/[a-zA-Z]+/).nil?
    remark.upcase == remark
  end

  def self.question?(remark)
    remark.match(/\?$/)
  end

  def self.silence?(remark)
    remark.empty?
  end
end

module BookKeeping
  VERSION = 1
end

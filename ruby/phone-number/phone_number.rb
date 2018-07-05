# Cleans a Phonenumber
class PhoneNumber
  def self.clean(number)
    clean_num = number.gsub(/[^[0-9]]/, '')
    clean_num = remove_country_code(clean_num)
    valid?(clean_num) ? clean_num : nil
  end

  def self.remove_country_code(number)
    number = number[1..-1] if number.length == 11 && number[0] == '1'
    number
  end

  def self.valid?(number)
    valid_length?(number) &&
    valid_area_code?(number) &&
    valid_exchange_code?(number)
  end

  def self.valid_length?(number)
    number.length == 10
  end

  def self.valid_area_code?(number)
    !('0'..'1').cover?(number[0])
  end

  def self.valid_exchange_code?(number)
    !('0'..'1').cover?(number[3])
  end
end

module BookKeeping
  VERSION = 2
end

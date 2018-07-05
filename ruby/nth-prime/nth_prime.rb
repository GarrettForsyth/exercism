# Finds the nth prime number
class Prime
  def self.nth(nth_prime)
    raise ArgumentError if nth_prime <= 0
    primes = [2]

    current_number = 3
    until primes.length == nth_prime
      # Only need to check up to the sqrt of for factors
      limit = Math.sqrt(current_number).ceil
      primes << current_number if primes.none? do |n|
        break true if n > limit
        (current_number % n).zero?
      end
      current_number += 2 # Only odd numbers are possible primes
    end
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end

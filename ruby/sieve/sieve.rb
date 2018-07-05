# Finds primes up to a limit using the Sieve of Eratosthenes
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = []
    unmarked = (2..@limit).to_a

    until unmarked.empty?
      next_prime = unmarked.shift(1).first
      primes << next_prime
      unmarked.reject! { |n| (n % next_prime).zero? }
    end
    primes
  end
end

module BookKeeping
  VERSION = 1
end

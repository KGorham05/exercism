class Sieve
  attr_accessor :limit, :digits_to_check

  def initialize(num_limit)
    @limit = num_limit
    @digits_to_check = (2..limit).to_a
  end

  def primes 
    primes = []
    digits_to_check.each { |num| 
      primes.push(num)
      multiple = 2
      product = num * 1
      while product < limit do
        product = num * multiple
        if digits_to_check.include?(product)
          digits_to_check.delete(product)
        end
        multiple += 1
      end
    }
    primes
  end

end

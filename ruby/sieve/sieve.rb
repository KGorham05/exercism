class Sieve
  attr_accessor :limit, :digits_to_check

  def initialize(num_limit)
    @limit = num_limit
    @digits_to_check = (2..limit).to_a
  end

  def primes 
    primes = []
    digits_to_check.each { |num| 
      # Add it to the primes array
      primes.push(num)
      
      multiple = 2
      product = num * 1
      # remove all of it's multiples up to the limit
      while product < limit do
        product = num * multiple
        if digits_to_check.include?(product)
          digits_to_check.delete(product)
        end
        multiple += 1
      end
    }
    # Return an array of all primes up to the limit
    primes
  end

end

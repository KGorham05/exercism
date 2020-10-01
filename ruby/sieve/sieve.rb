# v2
class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes 
    primes = [nil, nil, *2..@limit]
    (2..@limit).each do |i|
      (i**2..@limit).step(i) {|m| primes[m] = nil } if primes[i]
    end
    primes.compact
  end

end

# v1
# class Sieve

#   def initialize(num_limit)
#     @limit = num_limit
#     @digits_to_check = (2..limit).to_a
#   end

#   def primes 
#     primes = []
#     @digits_to_check.each { |i| 
#       primes.push(i)
#       multiple = 2
#       product = num * 1
#       while product < @limit do
#         product = num * multiple
#         if @digits_to_check.include?(product)
#           @digits_to_check.delete(product)
#         end
#         multiple += 1
#       end
#     }
#     primes
#   end

# end

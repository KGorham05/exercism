# v3 using a Sieve
class Prime

  def self.nth(n)
    raise ArgumentError if n == 0
    limit = n * (Math.log(n)+2)
    primes = [nil, nil, *2..limit]
    # I see solutions where this outer loop is (2..Math.sqrt(limit)) but I don't understand why that works so I'm not using it
    # Although that would make this more efficient
    (2..limit).each do |i|
      (i**2..limit).step(i) {|m| primes[m] = nil } if primes[i]
    end
    primes.compact[n-1]
  end

end

# v2 - Better syntax but realllly slow

# class Prime
#   def self.nth(n)
#     raise ArgumentError if n == 0
#     n.times.reduce(1) do |previous_prime|
#       (previous_prime+1).upto(Float::INFINITY).find do |num|
#         (1..num).select { |d| num % d == 0 } == [1, num]
#       end
#     end
#   end
# end

# v1 - Slow but works
# class Prime

#   def self.nth(n)
#     raise ArgumentError if n == 0
#     primes = []
#     num = 2
#     until primes.length == n do 
#       if (1..num).select { |d| num % d == 0 } == [1, num]
#         primes.push(num)
#       end
#       num += 1
#     end
#     primes[n-1]
#   end

# end

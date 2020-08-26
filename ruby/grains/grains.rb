# V3 Final
class Grains

  def self.square(n)
    raise ArgumentError.new("Must input a number between 1 and 64") if n <= 0 || n > 64
    2**(n - 1)
  end

  def self.total
    2**(64) - 1
  end

end

#V2
# class Grains

#   def self.square(n)
#     raise ArgumentError.new("Must input a number between 1 and 64") if n <= 0 || n > 64

#     @arrayOfSquares = []
#     for i in 1..n do
#         @arrayOfSquares.push(2**(i-1))
#     end
#     @arrayOfSquares[n-1]
#   end

#   def self.total
#     self.square(64)
#     @arrayOfSquares.sum()
#   end

# end

# V1

# class Grains

#   def self.square(n)
#     # If invalid input, throw error
#     raise ArgumentError.new("Must input a number between 1 and 64") if n <= 0 || n > 64

#     @arrayOfSquares = []
#     for i in 1..n do
#       if i == 1
#         @arrayOfSquares.push(i)
#       else 
#         @arrayOfSquares.push((@arrayOfSquares[i-2] * 2))
#       end
#     end
#     @arrayOfSquares
#     @arrayOfSquares[n-1]
#   end

#   def self.total
#     self.square(64)
#     @arrayOfSquares.sum()
#   end

# end


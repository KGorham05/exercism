class Triplet 

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    @a + @b + @c
  end

  def product
    @a * @b * @c
  end

  def pythagorean?
    @a**2 + @b**2 == @c**2 && @a < @b && @b < @c
  end

  def self.where(max_factor:, min_factor: 1,  sum: nil)
    products = []
    min_factor.upto(max_factor) do |factor1|
      (factor1+1).upto(max_factor) do |factor2|
        (factor2+1).upto(max_factor) do |factor3|
          triplet = Triplet.new(factor1, factor2, factor3)
          if triplet.pythagorean?
            if sum
              products << triplet if triplet.sum == sum
            else
              products << triplet
            end
          end
        end
      end
    end
    products
  end

end

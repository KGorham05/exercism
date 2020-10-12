# # Pythagorean Triplet

# A Pythagorean triplet is a set of three natural numbers, {a, b, c}, for
# which,

# ```text
# a**2 + b**2 = c**2
# ```

# and such that,

# ```text
# a < b < c
# ```

# For example,

# ```text
# 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
# ```

# Given an input integer N, find all Pythagorean triplets for which `a + b + c = N`.

# For example, with N = 1000, there is exactly one Pythagorean triplet for which `a + b + c = 1000`: `{200, 375, 425}`.

# * * * *

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

  def self.where(max_factor, min_factor, sum)
    pythagorean?(max_)
  end


end

triplets = Triplet.where(max_factor: 10)
products = triplets.map(&:product).sort
p products
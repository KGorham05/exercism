class Grains

  def self.square(n)
    raise ArgumentError.new("Must input a number between 1 and 64") if n <= 0 || n > 64
    2**(n - 1)
  end

  def self.total
    2**(64) - 1
  end

end



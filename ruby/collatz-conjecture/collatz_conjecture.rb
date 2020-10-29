class CollatzConjecture

  def self.steps(n, steps = 0)
    return steps if n == 1
    raise ArgumentError.new('Must input a number > 0') if n < 1
    steps(n.even? ? n = n / 2 : n = 3 * n + 1, steps + 1)
  end

end
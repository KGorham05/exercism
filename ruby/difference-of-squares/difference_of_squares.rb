class Squares
  attr_reader :num_array

  def initialize(num)
    @num_array = [*1..num]
  end

  def square_of_sum
    num_array.sum**2  
  end

  def sum_of_squares
    num_array.map {|num| num**2}.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

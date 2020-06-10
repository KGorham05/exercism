class Triangle
  attr_reader :sides, :num_sides

  def initialize(side_lengths)
    @sides = side_lengths
    @num_sides = side_lengths.uniq.size
  end

  def triangle? 
    sorted_sides = sides.sort
    greatest_value = sorted_sides.pop
    greatest_value <= sorted_sides.sum && sides.none?(&:zero?)
  end

  def equilateral?
    if sides.all? {|n| n != 0}
      num_sides == 1 
    end
  end

  def isosceles?
    num_sides == 1 || num_sides == 2 && triangle?
  end

  def scalene?
    num_sides == 3 && triangle?
  end

end



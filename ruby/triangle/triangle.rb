class Triangle
  attr_reader :sides

  def initialize(side_lengths)
    @sides = side_lengths
  end

  def isTriangle? 
    sorted_sides = sides.sort
    greatest_value = sorted_sides.pop
    greatest_value <= sorted_sides.sum && (sides.reject{|side| side == 0} == sides) 
  end

  def equilateral?
    if sides.all? {|n| n != 0}
      sides.uniq.size == 1 
    end
  end

  def isosceles?
    sides.uniq.size == 1 || sides.uniq.size == 2 && isTriangle?
  end

  def scalene?
    sides.uniq.size == 3 && isTriangle?
  end

end



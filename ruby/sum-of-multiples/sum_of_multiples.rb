class SumOfMultiples

  def initialize(*args)
    @args = *args
  end

  def to(limit)
    @args.flat_map{ |num| multiples(num, limit) }.uniq.sum
  end

  private
  def multiples(num, limit)
    1.upto(limit - 1).select do |n| 
      n % num == 0
    end  
  end  

end


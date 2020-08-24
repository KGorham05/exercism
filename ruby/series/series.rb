class Series

  def initialize (series)
    @seriesAsArr = series.split("")
  end

  def slices(n)
    raise ArgumentError.new("Slice size is greater than the size of the array") if n > @seriesAsArr.length
       
    arrayOfSlices = @seriesAsArr.each_cons(n).map(&:join)
  end

end

class Series

  def initialize (series)
    @series_as_arr = series.chars
  end

  def slices(n)
    raise ArgumentError.new("Slice size is greater than the size of the array") if n > @series_as_arr.length
       
    array_of_slices = @series_as_arr.each_cons(n).map(&:join)
  end

end

class Matrix
  attr_reader :rows, :columns

  def initialize(text)
    @rows = text.lines.map {|line| line.split(" ").map {|num| num.to_i}}
    @columns = rows.transpose
  end

end


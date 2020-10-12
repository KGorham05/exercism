class Matrix
  attr_reader :rows, :columns

  def initialize (matrix_values_as_a_string)
    @rows = matrix_values_as_a_string.lines.map {|line| line.split(" ").map(&:to_i)}
    @columns = @rows.transpose
  end

  def saddle_points
    points = []
    rows.map.with_index {|row, index_of_row| 
      row.map.with_index{ |value, col| 
        if value == row.max
          if columns[col].min == value
            points.push([index_of_row, col])
          end
        end
      }
    }
    points
  end

end



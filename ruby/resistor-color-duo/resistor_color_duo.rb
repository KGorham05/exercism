
class ResistorColorDuo
  
  def self.value(color_arr)
    @color_values = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
    (@color_values.index(color_arr[0]).to_s + @color_values.index(color_arr[1]).to_s).to_i
  end

end

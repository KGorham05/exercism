class ResistorColorDuo
  COLOR_VALUES = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(color_arr)
    [COLOR_VALUES.index(color_arr[0]), COLOR_VALUES.index(color_arr[1])].join().to_i
  end
end


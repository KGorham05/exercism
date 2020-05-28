class ResistorColorDuo
  COLOR_VALUES = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(color_arr)
    (COLOR_VALUES.index(color_arr[0]).to_s + COLOR_VALUES.index(color_arr[1]).to_s).to_i
  end
end

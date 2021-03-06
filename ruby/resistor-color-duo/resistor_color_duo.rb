class ResistorColorDuo
  COLOR_VALUES = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(resistors)
    resistors.first(2).map { |color| COLOR_VALUES.index(color) }.join.to_i
  end
end


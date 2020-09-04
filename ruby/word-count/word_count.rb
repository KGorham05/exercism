class Phrase
  attr_reader :str_as_arr

  def initialize(str)
    @str_as_arr = str.downcase.scan(/(?!'.*')\b[\w']+\b/)
  end

  def word_count
    str_as_arr.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end
end
class Acronym
  def self.abbreviate(string)
    string.sub("-", " ").split.map { |word| word[0] }.join().upcase
  end
end

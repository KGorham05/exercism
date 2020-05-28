# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).

class Acronym

  def self.abbreviate(string)
    string.sub("-", " ").split.map { |word| word[0] }.join().upcase
  end

end

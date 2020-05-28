# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).

class Acronym

  def self.abbreviate(string)
    abbreviation = ""
    string.sub("-", " ").split.map { |word| abbreviation += word[0].upcase}
    abbreviation
  end

end

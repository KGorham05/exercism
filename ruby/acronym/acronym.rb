# Solution 1

# class Acronym
#   def self.abbreviate(phrase)
#     phrase.sub("-", " ").split.map { |word| word[0] }.join().upcase
#   end
# end

# Solution 2 - using scan and regex

class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-zA-Z]/).join().upcase
  end
end
  

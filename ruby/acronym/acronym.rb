# Solution 1

# class Acronym
#   def self.abbreviate(string)
#     string.sub("-", " ").split.map { |word| word[0] }.join().upcase
#   end
# end

# Solution 2 - using scan and regex

class Acronym
  def self.abbreviate(string)
    string.scan(/\b[a-zA-Z]/).join().upcase
  end
end
  

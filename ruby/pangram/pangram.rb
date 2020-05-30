#Solution 1

# class Pangram
#   def self.pangram?(string)
#     alphabet = "abcdefghijklmnopqrstuvwxyz"
#     string.downcase.each_char { |c| alphabet.gsub!(c, '') }
#     alphabet.length == 0 ? true : false
#   end
# end

#Solution 2 -> instead, check for 26 unique characters. If there are 26 then pangram = true

class Pangram
  def self.pangram?(string)
    string.downcase.scan(/[a-z]/).uniq.size == 26
  end
end


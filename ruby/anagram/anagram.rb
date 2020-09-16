# Given a word and a list of possible anagrams, select the correct sublist.

# Given `"listen"` and a list of candidates like `"enlists" "google"
# "inlets" "banana"` the program should return a list containing
# `"inlets"`.

# V2 Solutions (with help)
class Anagram

  def initialize(word)
    @word_to_match = word
  end

  def match(possible_anagrams)
    possible_anagrams.select do |word| 
      unless word.downcase == @word_to_match.downcase
        word.downcase.chars.sort == @word_to_match.downcase.chars.sort
      end
    end
   end
end

# V1 Solution
# class Anagram

#   def initialize(word)
#     @word_to_match = word.downcase
#     @chars = word.downcase.chars
#     @num_unique_chars = @chars.uniq.length
#   end

#   def match(possible_anagrams)
#     confirmed_anagrams = []
#     possible_anagrams.map{ |word| 
#       if word.length == @chars.length && word.chars.uniq.length == @num_unique_chars 
#         num_to_confirm_match = word.length
#         num_of_confirmed_chars = 0
#         word.chars.map{ |char|     
#           if @chars.include?(char.downcase)
#             if @chars.count(char.downcase) == word.count(char)
#               num_of_confirmed_chars += 1
#             end
#           end
#         }
#         if num_of_confirmed_chars == num_to_confirm_match
#           unless word.downcase == @word_to_match
#             confirmed_anagrams.push(word)
#           end
#         end
#       end      
#     }
#     confirmed_anagrams
#   end
# end

# detector = Anagram.new('master')
# anagrams = detector.match(["stream", "pigeon", "maters", "sserpn"])
# expected = ["maters", "stream"]
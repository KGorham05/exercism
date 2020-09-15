# Given a word and a list of possible anagrams, select the correct sublist.

# Given `"listen"` and a list of candidates like `"enlists" "google"
# "inlets" "banana"` the program should return a list containing
# `"inlets"`.

class Anagram

  def initialize(word)
    # downcase to account for mixed casing
    @word_to_match = word.downcase
    @chars = word.downcase.chars
    @num_unique_chars = @chars.uniq.length
  end

  def match(possible_anagrams)
    confirmed_anagrams = []
    # loop over the array && confirm the uniq length matches
    possible_anagrams.map{ |word| 
      # confirm the lenght's match
      if word.length == @chars.length && word.chars.uniq.length == @num_unique_chars 
        # turn the word into an array
        num_to_confirm_match = word.length
        num_of_confirmed_chars = 0
        word.chars.map{ |char| 
          # make sure each character is found in the word array
          # downcase to account for mixed casing
          if @chars.include?(char.downcase)
            # make sure it occurs the same number of times
            if @chars.count(char.downcase) == word.count(char)
              num_of_confirmed_chars += 1
            end
          end
        }
        # if all the characters in the original word find a match
        if num_of_confirmed_chars == num_to_confirm_match
          # Make sure not to push anagrams of itself 
          unless word.downcase == @word_to_match
            # add that word to the array of matches
            confirmed_anagrams.push(word)
          end
        end
      end      
    }
    # after the loop, return the array of matched words
    confirmed_anagrams
  end
end

# detector = Anagram.new('master')
# anagrams = detector.match(["stream", "pigeon", "maters", "sserpn"])
# expected = ["maters", "stream"]
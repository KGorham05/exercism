# Given a word and a list of possible anagrams, select the correct sublist.

# Given `"listen"` and a list of candidates like `"enlists" "google"
# "inlets" "banana"` the program should return a list containing
# `"inlets"`.

class Anagram

  def initialize(word)
    @chars = word.chars
    @num_unique_chars = @unique_chars.uniq.length
  end

  def match(arr)
    # loop over the array
    # turn the word into an array
    # make sure each character is found in the word array
    # if all the characters in the original word find a match
    # confirm the lenght's match
    # confirm the uniq length matches
    # add that word to the array of matches
    # after the loop, return the array of matched words
    p arr
  end

end

detector = Anagram.new('master')
anagrams = detector.match(["stream", "pigeon", "maters"])
# expected = ["maters", "stream"]
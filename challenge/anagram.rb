def funWithAnagrams(text)
  final_array = [text[0]]
  text.shift
  text.map { |possible_anagram| 
    unless final_array.any? { |passed_word|  passed_word.downcase.chars.sort == possible_anagram.downcase.chars.sort }
      final_array.push(possible_anagram)
    end
  }
  final_array.sort
end

p funWithAnagrams(["code", "doce", "pig", "ipg"])

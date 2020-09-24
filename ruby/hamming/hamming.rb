
#v2 Recursive Solution
module Hamming

  def self.checkEqualLength(s1, s2)
    if s1.length != s2.length 
      raise ArgumentError.new("Must input two equal length strings to compute Hamming difference")
    end
  end

  def self.compute(s1, s2, i = 0, total = 0, lengthHasBeenChecked = false)
    unless lengthHasBeenChecked
      checkEqualLength(s1, s2)
      lengthHasBeenChecked = true
    end

    if i == s1.length
      return total
    elsif s1[i] != s2[i] 
      total += 1
    end
    i += 1
    compute(s1, s2, i, total, lengthHasBeenChecked)
  end

end


#v1
# module Hamming

#   def self.compute(first_strand, second_strand)
#     if first_strand.length != second_strand.length 
#       raise ArgumentError.new("Must input two equal length strings to compute Hamming difference")
#     else 
#     @hammingNumber = 0 
#     first_strand.chars.map.with_index {|char, i|
#      if char != second_strand[i]
#        @hammingNumber += 1
#      end
#     }
#     @hammingNumber
#     end
#   end
# end




#V3 Split + Zip + Count
module Hamming
  def self.compute(first_strand, second_strand)
    if first_strand.length != second_strand.length 
      raise ArgumentError.new("Must input two equal length strings to compute Hamming difference")
    else 
    first_strand.split("").zip(second_strand.split("")).count {|arr| arr[0] != arr[1] }
    end
  end
end

#v2 Recursive Solution
# module Hamming

#   def self.check_equal_length(s1, s2)
#     if s1.length != s2.length 
#       raise ArgumentError.new("Must input two equal length strings to compute Hamming difference")
#     end
#   end

#   def self.compute(s1, s2, i = 0, total = 0, length_has_been_checked = false)
#     unless length_has_been_checked
#       check_equal_length(s1, s2)
#       length_has_been_checked = true
#     end

#     if i == s1.length
#       return total
#     elsif s1[i] != s2[i] 
#       total += 1
#     end
#     i += 1
#     compute(s1, s2, i, total, length_has_been_checked)
#   end

# end


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




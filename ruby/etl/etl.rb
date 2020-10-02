# v1 More readable
# class ETL
#   class << self
#     def transform(old_format_hash)
#       formatted_hash = {}
#         old_format_hash.each { |letter_value, letters| 
#           letters.map { |letter| 
#             formatted_hash.merge!({letter.downcase => letter_value})
#           } 
#         }
#       formatted_hash
#     end
#   end
# end

# v2 "Golf Solution"
# class ETL
#   class << self
#     def transform(old_format_hash)
#       Hash[*old_format_hash.map { |key, value| 
#         value.map { |letter| 
#           [letter.downcase, key]
#        }
#       }.flatten]
#     end
#   end
# end

# v3 Each_with_object
class ETL
  class << self
    def transform(old_format_hash)
      old_format_hash.each_with_object({}) { | (letter_score, letters), new_formatt_hash | 
        letters.each { |letter| 
          new_formatt_hash[letter.downcase] = letter_score
        }
      }
    end
  end
end




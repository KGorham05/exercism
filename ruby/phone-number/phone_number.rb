# V1 Solution

module PhoneNumber

  def self.clean(string_of_numbers)
    clean_number = string_of_numbers.scan(/\d+/).join
    if clean_number.length < 10 or clean_number.length > 11
      nil
    else
      if clean_number.length == 11
        if clean_number[0] == "1"
          unless clean_number[1] =~ /[2-9]/ and clean_number[4] =~ /[2-9]/ 
            nil
          else
            clean_number[1, 10]
          end
        else
          nil
        end
      else 
        unless clean_number[0] =~ /[2-9]/ and clean_number[3] =~ /[2-9]/ 
          nil
        else
          clean_number
        end
      end
    end
  end

end

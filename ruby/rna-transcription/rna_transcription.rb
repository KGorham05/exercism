class Complement

  def self.of_dna(string)
    @converted = ""
    string.each_char do |x| 
      if x == "G"
        @converted += "C"
      elsif x == "C"
        @converted += "G"
      elsif x == "T"  
        @converted += "A"
      elsif x == "A"  
        @converted += "U"  
      end
    end
    @converted
  end

end
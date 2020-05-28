=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

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
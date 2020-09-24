module Hamming

  def self.compute(first_strand, second_strand)
    if first_strand.length != second_strand.length 
      raise ArgumentError.new("Must input two equal length strings to compute Hamming difference")
    else 
    
    
    end
  end
end

Hamming.compute('AATG', 'AAAA')

class Nucleotide
  NUCLEOTIDES = %w[A T C G].freeze

  def initialize(dna)
    @dna = dna
    raise ArgumentError unless dna.chars.all? { |char| NUCLEOTIDES.include?(char) }
  end
  
  def self.from_dna(dna)
    new(dna)
  end

  def count(nucleotide)
    @dna.count(nucleotide)
  end
  
  def histogram
    NUCLEOTIDES.each_with_object ({}) { |nucleotide, histogram| 
      histogram[nucleotide] = @dna.count(nucleotide)
    }
  end

end


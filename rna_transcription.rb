class Complement
  class << self

    DNA = 'GCTA'
    RNA = 'CGAU'

    def of_dna(dna_string)
      verify?(dna_string) ? convert_dna_to_rna(dna_string) : ""
    end

    private
    def convert_dna_to_rna(dna_string)
      dna_string.tr DNA, RNA
    end

    def verify?(dna_string)
      dna_string.chars.all? { |nucleotide| DNA.include?(nucleotide) }
    end
  end
end

module BookKeeping
  VERSION = 4
end

# ITERATION 1
# Intentionally included for educational purposes
# Shows the original implementation

class Complement

  COMPLEMENTS = { G: 'C',
                  C: 'G',
                  T: 'A',
                  A: 'U'
                }

  def self.of_dna(dna_string)
    rna_string = convert_dna_to_rna(dna_string)
    if rna_string.length === dna_string.length
      rna_string
    else
      ""
    end
  end

  def self.convert_dna_to_rna(dna_string)
    dna_string.chars.map { |nucleotide| COMPLEMENTS[nucleotide.to_sym] }.join
  end
end

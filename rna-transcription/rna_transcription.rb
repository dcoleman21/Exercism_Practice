=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  RNA_CODE = {
    'G' => 'C',
    'C' => 'G',
    'A' => 'U', 
    'T' => 'A'
  }

  def self.of_dna(dna_strand)
  #   if dna_strand == 'C'
  #     'G'
  #   elsif dna_strand == 'G'
  #     'C'
  #   elsif dna_strand == 'A'
  #     'U'
  #   elsif dna_strand == 'T'
  #     'A'
  #   else 
  #     dna_strand
  #   end
  # end
    strand_array = dna_strand.split('')
    
    strand_array.each_with_index do  |base, index|
      strand_array[index] = RNA_CODE[base]
    end
    strand_array.join
  end
end
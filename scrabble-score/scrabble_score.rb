=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  LETTER_HASH = {
    "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1,
    "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
    "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3,
    "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4,
    "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10,
    "Z" => 10
  }
  def initialize(word)
    return if word.nil? || word.scan(/\w/).empty?
    @word = word.upcase
  end

  def self.score(word)
    new(word).score
  end

  def score
    return 0 unless @word
    @word.chars.reduce(0) do |acc, letter|
      acc + LETTER_HASH[letter]
    end

    # score = []
    # @word.chars.each do |letter|
    #   score << LETTER_HASH[letter]
    # end
    # score.reduce(&:+)
  end
end

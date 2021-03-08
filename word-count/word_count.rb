=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  attr_reader :word_count

  def initialize(phrase)
    @word_count = Hash.new(0)
    count_words(phrase)
  end

  def count_words(phrase)
    regex_expression = /\w+(?:'\w+)*/
    phrase.scan(regex_expression).each do |word|
      @word_count[word.downcase] += 1
    end
  end
end

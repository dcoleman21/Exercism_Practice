=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(num)
    word_combo = ""
    word_combo += "Pling" if num%3 == 0
    word_combo += "Plang" if num%5 == 0
    word_combo += "Plong" if num%7 == 0
    word_combo += num.to_s if word_combo == ""
    word_combo
  end
end

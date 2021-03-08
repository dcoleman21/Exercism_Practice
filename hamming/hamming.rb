=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  # def self.compute(str1, str2)
  #   raise ArgumentError if str1.length != str2.length
  #   (0..12).to_a.map do |index|
  #     if str1[index] == str2[index]
  #       0
  #     else
  #       1
  #     end
  #   end.sum
  # end

  # Refactored with spaceship operator(<=>)

  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    (0..12).to_a.map do |index|
      # abs = absolute value(the distance from zero); it makes - to +
      (str1[index] <=> str2[index]).abs()
    end.sum
  end
end

=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end

=begin
- first we need to get the nums into an array of individual digits
- second we need to find the length of the digits array
- then we need to multiple each digit by the length of the original num (153 = 1**3, 5**3, 3**3)
- then we need to sum each of those (1 + 125 + 64)
- if the sum of those equals the orginal num it is an Armstrong num
=end

class ArmstrongNumbers
  def self.include?(num)
    digits = num.to_s.chars.map do |digit|
      digit.to_i
    end
    # digits = num.digits.reverse
    # => [num]
    length = digits.length
    num == digits.sum do |digit|
      digit**length
    end
  end
end

=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(nums)
    no_space_nums = nums.delete(' ')
    if no_space_nums.scan(/[A-Za-z\W]/) != [] || no_space_nums.length <= 1
      return false
    end
    # need to double the second digits
    doubled_nums = no_space_nums.chars.reverse.map.with_index do |num, index|
      if index%2 == 1
        num = num.to_i * 2
        if num > 9
          num - 9
        else
          num
        end
      else
        num.to_i
      end
    # need to sum the digits
    end.sum
    # check if sum is divisible by 10
    return doubled_nums % 10 == 0
  end
end

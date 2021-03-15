=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(nums)
    no_space_nums = nums.gsub(/\s+/, "").chars.reverse
    if no_space_nums.length <= 1
      false
    else
      doubled_nums = no_space_nums.map.with_index do |num, index|
        if index%2 == 1
          num.to_i * 2
        else
          num.to_i
        end
      end
      doubled_nums
      # need to subract 9 from any number that is greater than 9
      require "pry"; binding.pry
    end
  end
end

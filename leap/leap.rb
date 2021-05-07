=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end

class Year
  def self.leap?(year)
    case
      when year % 400 == 0 then return true
      when year % 100 == 0 then return false
      when year % 4 == 0 then return true
      else return false
    end
  #   if year % 400 == 0
  #     return true
  #   end
  #   if year % 100 == 0
  #     return false
  #   end
  #   year % 4 == 0
  end
end

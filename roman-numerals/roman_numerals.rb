=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end
class Integer
  ROMAN_NUMS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def to_roman
    number = self
    numerals = ''

    ROMAN_NUMS.each do |arabic, roman|
      numerals << roman * (number / arabic)
      number = number % arabic
    end
    numerals

    # ROMAN_NUMS.each do |arabic, roman|
    #   while number >= arabic
    #     numerals << roman
    #     number -= arabic
    #   end
    # end
    # numerals
  end
end

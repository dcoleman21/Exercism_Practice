
=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
COLOR_KEY = {
  'brown' => 1,
  'black' => 0,
  'red' => 2,
  'orange' => 3,
  'yellow' => 4,
  'green' => 5,
  'blue' => 6,
  'violet' => 7,
  'grey' => 8,
  'white' => 9
}
  def self.value(colors)
    colors.slice(0, 2).map do |color|
      COLOR_KEY[color]
    end.join('').to_i
  end
end

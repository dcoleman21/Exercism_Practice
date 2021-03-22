=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_reader :hour,
              :min

  def initialize(hour, min={minute: 0})
    @hour = hour[:hour]
    @min = min[:minute]
  end

  def to_s
    "#{@hour.to_s.rjust(2, '0')}:#{@min.to_s.rjust(2, '0')}"
  end
end

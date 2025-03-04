=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_reader :hour,
              :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / 60) % 24
    @minute = minute % 60
  end

  def to_s
    sprintf("%02d:%02d", hour, minute)
    # "#{@hour.to_s.rjust(2, '0')}:#{@minute.to_s.rjust(2, '0')}"
  end

  def +(clock)
    Clock.new(hour: (clock.hour + @hour), minute: (clock.minute + @minute))
  end

  def -(clock)
    Clock.new(hour: (@hour - clock.hour), minute: (@minute - clock.minute))
  end

  def ==(clock)
    @hour == clock.hour && @minute == clock.minute
  end
end

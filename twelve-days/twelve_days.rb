=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  DAYS = {
    1 => 'first',
    2 => 'second',
    3 => 'third',
    4 => 'fourth',
    5 => 'fifth',
    6 => 'sixth',
    7 => 'seventh',
    8 => 'eighth',
    9 => 'ninth',
    10 => 'tenth',
    11 => 'eleventh',
    12 => 'twelfth'
  }

  GIFTS = [
     "and a Partridge in a Pear Tree",
     "two Turtle Doves",
     "three French Hens",
     "four Calling Birds",
     "five Gold Rings",
     "six Geese-a-Laying",
     "seven Swans-a-Swimming",
     "eight Maids-a-Milking",
     "nine Ladies Dancing",
     "ten Lords-a-Leaping",
     "eleven Pipers Piping",
     "twelve Drummers Drumming"
  ]

  def self.song
    12.times.map { |index| line(index + 1)}.join("\n\n")
  end

  def self.line(num)
    if num == 1
      "On the #{DAYS[num]} day of Christmas my true love gave to me: a Partridge in a Pear Tree."
    else
      "On the #{DAYS[num]} day of Christmas my true love gave to me: #{gifts(num)}."
    end
  end

  def self.gifts(num)
    GIFTS[0..num - 1].reverse.join(", ")
  end
end
# puts TwelveDays.song

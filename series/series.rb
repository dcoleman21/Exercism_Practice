=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

# contiguous = sharing a border; adjacent

class Series
# start with a string of numbers
def initialize(num_string)
  @num_string = num_string #('01234')
end

# Array.new(length) { "#{@num_string}" }
def slices(pairings)
  array = @num_string.chars
  if pairings > array.length
    raise ArgumentError
  end
  new_array = []
  array.each_cons(pairings) do |a|
    if pairings == 1
      return array
    else
      new_array << a.join
    end
  end
  new_array
  # step though an array/list and do something with that
end
# ["01", "12", "23", "34"]
# iterate over each digit

# return a string of digits that can be n length

# each digit had to have been adjacent to the other
end

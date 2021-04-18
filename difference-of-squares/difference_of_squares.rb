=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares
  attr_reader :values
  # value = the final number of the range
  def initialize(value)
    @values = (1..value).to_a
  # @values creates the entire range and creates an array
  end

  def square_of_sum
    # add up each num in the array and then square that sum
    @values.sum**2
  end

  def sum_of_squares
    # square each num in the array
    squared_nums = @values.map do |value|
      value**2
    end
    # take the array of squared nums and add them
    squared_nums.sum
  end

  def difference
    # subtract to find the difference
    square_of_sum - sum_of_squares
  end
end

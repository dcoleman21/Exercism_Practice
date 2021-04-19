=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  MAX_BOARD = 64
  MIN_BOARD = 1

  def self.square(position)
    if position < MIN_BOARD || position > MAX_BOARD
      raise ArgumentError
    else
      2**(position - 1)
    end
  end

  def self.total
    #(2**MAX_BOARD) - 1 # (2^64) - 1
    (1..MAX_BOARD).sum do |position|
      self.square(position)
    end
    # total = 0
    # (1..MAX_BOARD).each do |pos|
    #   total += self.square(pos)
    # end
    # total
  end
end

=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

# the output is true or false
# we want to take each word and check each character to see that it only appears once == true >once == false
class Isogram
  def self.isogram?(word)
    counts = Hash.new(0)
    word.gsub(/\W/, '').upcase.chars.each do |char|
      counts[char] += 1
      return false if counts[char] >= 2
    end
    # we want to check if any letters show up more than 1x
    # check if any value is > 1
    # if counts.values.uniq.length > 1
    #   false
    # else
    #   true
    # end
  end
end

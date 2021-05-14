=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode(input)
    same_letters = input.chars.chunk { |letter| letter }
    same_letters.collect do |k,v|
      if v.length > 1
        result = v.length.to_s
      else
        result = ''
      end
      result += k
    end.join
  end
  # [v.length > 1 ? v.length : '', k].join

  def self.decode(string)
    characters = string.chars
    result = []
    frequency = "0"

    characters.each do |char|
      if char.match(/[0-9]/)
        frequency += char
      else
        if frequency.to_i > 1
          frequency.to_i.times do
            result << char
          end
        else
          result << char
        end
        frequency = "0"
      end
    end
    return result.join()
  end
end

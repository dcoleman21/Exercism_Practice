=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime

  def self.nth(idx)
    raise ArgumentError if idx < 1
    primes = []
    int = 1
    while primes.length < idx
      int += 1
      primes << int if Prime.is_prime?(int)
    end
    int
  end

  def self.is_prime?(int)
    (2..(int - 1)).each do |n|
      return false if int % n == 0
    end
    true
  end
end

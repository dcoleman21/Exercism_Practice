=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end
class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit < 2
    prime_nums = []
    2.upto(@limit) do |primes|
      prime_nums << primes
    end
    prime_nums
    prime_nums.each do |multiples|
      prime_nums.each do |primes|
        prime_nums.delete(primes) if primes > multiples && primes%multiples == 0
      end
    end
  end
end

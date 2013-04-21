require "test/unit"
require "lib/cli"
require "shoulda"
require "shoulda-context"

class PrimeNumberGeneratorTest < Test::Unit::TestCase
	context "Generator" do
		should "generate array of n primes" do
			actual 	 = PrimeNumberGenerator.new.generate_primes(3)
			expected = [2, 3, 5]
			assert_equal actual, expected
		end
	end

	context "Is Prime" do
		def is_prime?(number)
			PrimeNumberGenerator.new.is_prime?(number)
		end

		should "be valid" do
			assert is_prime?(3)
			assert is_prime?(5)
			assert is_prime?(97)
		end

		should "be invalid" do
			assert !is_prime?(15)
			assert !is_prime?(27)
			assert !is_prime?(100)
		end
	end
end
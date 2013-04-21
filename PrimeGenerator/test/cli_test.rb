require "test/unit"
require "lib/cli"
require "shoulda"
require "shoulda-context"
require "mocha"

class CliTest < Test::Unit::TestCase

	context "validate input" do

		def valid(count)
			Cli.new(count).validate
		end

		should "be valid for number input" do
			assert valid("10")
		end

		should "be invalid for non number input" do
			assert !valid("hello")
		end 
	end

	context "Generate Primes" do
		should "return first n primes" do
			assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], Cli.new("10").generate_primes
		end
	end
end
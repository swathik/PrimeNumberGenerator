require "test/unit"
require "lib/cli"
require "shoulda"
require "shoulda-context"
require "mocha"

class CliTest < Test::Unit::TestCase

	context "validate input" do

		def valid(number)
			Cli.new.validate(number)
		end

		should "be valid for number input" do
			assert valid("10")
		end

		should "be invalid for non number input" do
			assert !valid("hello")
		end 
	end

	context "Grid" do
		should "display multiplication of primes" do
			
		end
	end
end
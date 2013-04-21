require 'matrix'
require 'color_text'
require_relative './prime_number_generator'

class Cli

	def initialize(count)
		@count = count
	end

	def start
		if validate
			start_time = Time.now
			display_grid
			end_time = Time.now
			puts "TIME TAKEN : #{end_time - start_time} seconds".green
		end
	end

	def validate
		@count.match(/^[1-9][0-9]*$/)
	end

	def generate_primes
		PrimeNumberGenerator.new.generate_primes(@count.to_i)
	end

	def display_grid
		prime_numbers = generate_primes
		puts "Prime number multiplication table:"
		print "\t"
		print prime_numbers.join("\t").neon
		puts ""
		prime_numbers.each do |num1|
			print num1.to_s.neon
			print "\t"
			prime_numbers.each do |num2|
				print num1 * num2
				print "\t"
			end
			puts ""
		end
	end
end
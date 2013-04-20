require 'matrix'
require 'color_text'
require_relative './prime_number_generator'

class Cli

	def start
		count = ""
		while(true)
			puts "Please enter the count: (the number of prime numbers). Enter X to quit"
			count = gets.chomp
			break if count == "X"
			if validate(count)
				start_time = Time.now
				prime_numbers = generate_primes(count)
				display_grid(prime_numbers)
				end_time = Time.now

				puts "TIME TAKEN : #{end_time - start_time} seconds".green
			else
				puts "Please enter valid number"
			end
		end
	end

	def validate(count)
		return if count == "X"
		count.match(/^[0-9]+$/)
	end

	def generate_primes(count)
		PrimeNumberGenerator.new.generate_primes(count.to_i)
	end

	def display_grid(prime_numbers)
		puts "Prime number multiplication table is:"
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
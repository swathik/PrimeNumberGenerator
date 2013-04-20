class PrimeNumberGenerator

	def generate_primes(count)
		current 		 = 2
		generated 	 = 0
		prime_basket = []
		while(true)
			break if generated == count
			if is_prime?(current)
				prime_basket << current
				generated += 1
			end
			current += 1
		end
		prime_basket
	end

	private
		def is_prime?(number)
			return false if( number > 2 && number.even?)
			check_until = Math.sqrt(number).floor
			values = (2..check_until).select do |n|
				(number % n).zero?
			end
			!values.any?
		end
end

# start_time = Time.now
# n = PrimeNumberGenerator.new.generate_primes(10)
# end_time = Time.now

# puts "Time taken : #{end_time - start_time}"
# puts "These are the primes #{n}"
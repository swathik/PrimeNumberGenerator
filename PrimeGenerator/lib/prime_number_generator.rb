class PrimeNumberGenerator

	def generate_primes(count)
		current 	= 3
		generated = 1
		collector = [2]
		while(true)
			break if generated == count
			if is_prime?(current)
				collector << current
				generated += 1
			end
			current += 2 # check only odd numbers
		end
		collector
	end

	def is_prime?(number)
		check_until = Math.sqrt(number).floor
		values = (2..check_until).detect do |n|
			(number % n).zero?
		end.nil?
	end
end
class PrimeNumberGenerator

	def generate_primes(count)
		current 	= 2
		generated = 0
		collector = []
		while(true)
			break if generated == count
			if is_prime?(current)
				collector << current
				generated += 1
			end
			current += 1
		end
		collector
	end

	def is_prime?(number)
		return false if (number > 2 && number.even?)
		check_until = Math.sqrt(number).floor
		values = (2..check_until).select do |n|
			(number % n).zero?
		end
		!values.any?
	end
end
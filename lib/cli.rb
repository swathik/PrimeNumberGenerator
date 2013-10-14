require 'matrix'
require_relative './prime_number_generator'

class Cli

  def start
    puts "Please enter the count: (the number of prime numbers). Press X to quit"
    input = ""
    # while(input != "X")
    count = gets.chomp
    return if count == "X"
    puts "Please enter valid number" unless validate(count)
    
    prime_numbers = generate_primes(count)
    puts "#{prime_numbers}"
    display_grid(prime_numbers)
    # end
  end

  def validate(count)
    count.match(/^[0-9]+$/)
  end

  def generate_primes(count)
    PrimeNumberGenerator.new.generate_primes(count.to_i)
  end

  def display_grid(prime_numbers)
    count   = prime_numbers.size
    product = prime_numbers.product(prime_numbers).map { |n| n[0] * n[1] }
    grid    = ""
    product.each_with_index do |number, index|
      new_line = (multiple_of(index, count)) ? "\n" : ""
      grid    += new_line + number.to_s
      grid    += " " 
    end
    # puts "#{grid}"
  end

  private
    def multiple_of(index, count)
      return false if index.zero?
      (index % count).zero?
    end
end

Cli.new.start

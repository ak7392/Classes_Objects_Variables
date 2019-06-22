# Factorial
class Factorial
  def factorial(number)
    number = number.to_i
    number_range = number.downto(1).to_a
    factorial = number_range.inject(:*)
    puts "The factorial of #{number} is #{factorial}"
  end
end

a = Factorial.new
number = ARGV[0].to_i
a.factorial(number)

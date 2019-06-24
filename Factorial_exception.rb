# Negative Factorial Exception
class Numbers
  def factorial(n)
  raise NegativeFactorial, "The number provided is negative." if n < 0
  (1..n).inject(1, :*)
  end
  def test_negative
  assert_raises NegativeFactorial do
    factorial(-1)
  end
end

a = Numbers.new
n = ARGV[0].to_i
if n
  a.factorial(n)
else
  puts "Please provide input"
end
end

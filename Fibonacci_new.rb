module Fibonacci_upto
  class Operation
    def fibonacci_upto(n)
      num1 = 0
      num2 = 1
      while num2 < n
        puts num2
        num1, num2 = num2, num1 + num2
      end
    end
end

  res = Operation.new
  puts 'Enter the number upto which Fibonacci needs to be printed:'
  n = gets.chomp.to_i
  res.fibonacci_upto(n)
end

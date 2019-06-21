class String
  def to_s
    swapcase
  end
end


printf("enter the string: ")
input_string = gets.chomp
if input_string
  puts input_string.to_s
else
  puts 'Please provide an input'
end

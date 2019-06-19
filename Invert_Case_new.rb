class String
  def to_s
    self.swapcase
  end
end


printf("enter the string: ")
input_string = gets.chomp unless gets.chomp.nil?
inverted_case_string = input_string.to_s
puts inverted_case_string

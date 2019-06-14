class Replace
  def replace_regex(text)
    if text == " "
      return "Please provide an input"
    else
      text.gsub!(/[aeiou]/,"*")
      return text
    end
  end
end

puts "Enter input"
text = gets.chomp
a = Replace.new.replace_Regex(" ")
print a
b = Replace.new.replace_Regex("password123")
print b
c = Replace.new.replace_Regex("good morning")
print c
d = Replace.new.replace_Regex("hello everyone")
print d

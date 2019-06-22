class String
def count_chars(string)

  count1 = string.scan(/[A-Z]/).count
  count2 = string.scan(/[a-z]/).count
  count3 = string.scan(/\d/).count
  count4 = string.scan(/\W/).count
  puts"Lowercase characters = #{count2}"
    puts "Uppercase characters = #{count1}"
     puts "Numeric characters = #{count3}"
  puts "Special characters = #{count4}"
end

end

a = String.new
ARGV.each do |file_name|
a.count_chars(file_name)
end

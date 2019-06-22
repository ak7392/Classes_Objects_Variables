class String
def count_chars(string)

  count1 = string.scan(/[A-Z]/).count
  count2 = string.scan(/[a-z]/).count
  count3 = string.scan(/\d/).count
  count4 = string.scan(/\W/).count

  puts "Number of upper case characters = #{count1} "
  puts "Number of lower case characters = #{count2} "
  puts "Number of Numeric characters = #{count3} "
  puts "Number of spceial characters = #{count1} "

end

end

a = String.new
ARGV.each do |file_name|
a.count_chars(file_name)
end

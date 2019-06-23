# Reverse printing a String
class String
  def reverse_setence(string1)
    string = string1.split(' ').map(&:to_s)

    end_loop = string.length
    new_string = ' '
    while end_loop > 0
      end_loop -= 1
      new_string += string[end_loop] + ' '
    end
    puts "The reverse sentence is => #{new_string}"
  end
end

a = String.new
ARGV.each do |filename|
  if filename
    a.reverse_setence(filename)
  else
    puts('Passed string cannot be reversed because it is empty')
  end
end

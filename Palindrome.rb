class Strings
  def palindrome()
    puts "Enter a string!"
    user_input = gets.chomp
    user_input.downcase!
    if user_input.include?(" ")
      user_input.gsub!(/ /, "")
    end

    if user_input == user_input.reverse
      print "Is a pallindrome"
    else
      print "Is not a pallindrome"
    end
  end

end


a1 = Strings.new
a1.palindrome

class Strings
  def palindrome(s)
    
    if s.include?(" ")
      s.gsub!(/ /, "")
    end

    if s == s.reverse
      print "Is a pallindrome"
    else
      print "Is not a pallindrome"
    end
  end

end


a1 = Strings.new
s = ARGV[0].dup
s.downcase!
a1.palindrome(s)

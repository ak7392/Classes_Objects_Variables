class Strings
  def palindrome(s)

    if s.include?(" ")
      s.gsub!(/ /, "")
    end

    s1 = s.split(",").map {|s| s.to_s}

    s1 = (s.to_s == s.reverse.to_s ? true : false)
    puts s1
  end

end


a1 = Strings.new
s = ARGV[0].dup
s.downcase!
a1.palindrome(s)

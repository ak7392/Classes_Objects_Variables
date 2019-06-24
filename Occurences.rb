# Occurences
class String
 def occurence_characters(string)
   hash = Hash.new(0)
   string.scan(/[A-z]/).each { |item| hash[item] = (hash[item]) + 1 }
   hash
 end
end
b1 = String.new
v1 = ARGV[0]
puts b1.occurence_characters(v1)

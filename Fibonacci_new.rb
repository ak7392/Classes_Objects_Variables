class Series
 def transfer(string)
   z = string.to_i
   a = 0
   b = 1
   f = 1
   while f <= z
     print f
     yield
     f = a + b
     a = b
     b = f
   end
 end
end
reader = Series.new
ARGV.each do |file_name|
 reader.transfer(file_name) { print ' ' }
end

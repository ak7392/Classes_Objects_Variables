lines = []

file = File.open("./Sample_CSV.csv", "r")
users = []
users1 = []
users2 = []

if RUBY_VERSION =~ /2.3.7/ # for removing error "invalid byte sequence in US-ASCII (Argument Error)"
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

while (line = file.gets)
  arr = line.split(",")
end

array_of_hashes = []
arr.each { |record| array_of_hashes << {'Name' => record[0], 'EmpId' => record[1].to_i, 'Designation' => record[2]} }



puts array_of_hashes.select{|key, hash| key["EmpId"] == "Developers" }




  # if arr.match(/Designers/)
  # arr.find { |re| users = foo.match(arr) }
  # puts "Designers"
  # puts users.push({Name: arr[0], EmpId: arr[1]})
  # if {:Designation => "Designers"}
  #   puts "Designers"
  #   puts users2.push({Name: arr1[0], EmpId: arr1[1]})
  # elsif [:Designation] == "Developers"
  #   puts "Developers"
  #   puts users1.push({Name: arr[0], EmpId: arr[1]})
  # elsif [:Designation] == "Tester"
  #   puts "Tester"
  #   puts users2.push({Name: arr1[0], EmpId: arr[1]})
  # end
#end


file.close
lines.each {|l| puts l}

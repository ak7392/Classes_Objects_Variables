class Hash
  def sort_num(arr)

    arr1 = arr.split(",").map {|s| s.to_i}
    puts arr1.group_by {|i| i%2 }

  end
end

a = Hash.new
arr = ARGV[0] unless ARGV[0].nil?
a.sort_num(arr)
puts a

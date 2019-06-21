class Hash
  def hash_inject(array)
    array_int = array.split(",").map {|s| s.to_i}
    array_int.inject({even: [], odd: []}){|memo, element| memo[element.even? ? :even : :odd] << element; memo}

  end
end


a = Hash.new
array = ARGV[0]
if array
  puts a.hash_inject(array)
else
  puts 'Please provide an input'
end

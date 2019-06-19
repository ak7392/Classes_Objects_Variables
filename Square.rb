class Array
  def square(v1, v2)
    v3 = v1.split(",").map {|s| s.to_i}

    v3.each { |x| print "#{x*v2.to_i}" }
  end
end

a = Array.new
v1 = ARGV[0] unless ARGV[0].nil?
v2 = ARGV[1] unless ARGV[1].nil?
a.square(v1, v2)
puts a

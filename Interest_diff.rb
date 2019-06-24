# Interest_difference 
class Interest
$c = 0
$s = 0
$r = 0.1
  def simple_interest(p, t)
    $s = 0
    $r = 0.1
    $s = p * $r * t
  end


  def compound_interest(p, t)
    $c = 0
    $r = 0.1
    a = p * (1 + $r) ** (t)
    $c = a - p
  end

  def interest_difference()
    diff = 0
    diff = $c - $s
    puts diff
    puts "After calulation of simple interest and compund interest, interest_difference is #{diff} dollars!"
  end
  end

a = Interest.new
p = ARGV[0].to_i
t = ARGV[1].to_i
a.compound_interest(p, t)
a.simple_interest(p, t)
a.interest_difference()

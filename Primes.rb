# Filter Primes
class Numbers
  def primes(n)
  sieve = []
  (3..Math.sqrt(n)).step(2) do |i|
    unless sieve[i]
      (i*i..n).step(i) do |j|
        sieve[j] = true
      end
    end
  end
  return [2] + (3..n).step(2).select{ |i| !sieve[i] }
  end
end

a = Numbers.new
n = ARGV[0].to_i
puts a.primes(n)

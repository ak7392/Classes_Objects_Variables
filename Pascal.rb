class Figures
  def trianglePascal()

    number = 0

    while number < 1 or number > 11

      puts "Insert a number..."

      begin # try
        number = Integer( ARGV[0])
      rescue # catch
        puts "It's not a number!"
      end
    end

    for y in 0..number

      for x in 0..y

        val = factorial(y) / (factorial(x) * factorial(y - x))

        str = val.to_s # val toString

        while str.length < 5
          str += " "
        end

        print str
      end

      puts
    end
  end

  def factorial( x )
    return (if x == 0 or x == 1 then 1 else x * factorial(x - 1) end)
  end
end

a = Figures.new
a.trianglePascal()

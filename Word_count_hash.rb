class Solution
  def Word_counthash(text)
    arr = []
    while text.length > 0 do
      arr << text[0, 1]
      text[0, 1] = ""
    end

    c = Hash.new(0)
    arr.each do |arr|
      c[arr] += 1
    end
    print c
  end
end


Solution.new.Word_counthash("Hello World")

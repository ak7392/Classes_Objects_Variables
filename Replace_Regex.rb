class Solution
  def Replace_Regex(text)
    text.gsub!(/[aeiou]/,"*")
    print text
  end
end


Solution.new.Replace_Regex("abhinav")

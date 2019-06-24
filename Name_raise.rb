# Name_Raise
class Name
  def first=(first)
    if first[0] != first[0].chr.capitalize
      raise ArgumentError.new('Firstname must start with uppercase letter')
    end
    first = first.dup
    first[0] = first[0].chr.capitalize
    @first = first
  end

  def last=(last)
    if last == nil || last.size == empty
      raise ArgumentError.new('Everyone must have a last name.')
    @last = last
  end

  def full_name
    "#{@first} #{@last}"
  end

  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

a = Name.new('A', 'B')
a.first = ARGV[0].to_s
a.last = ARGV[1].to_s
puts 'Full name is:'
puts a.full_name

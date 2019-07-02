class FormatDisplay

  def initialize(data_array)
    @data_array = data_array
    @max_length_fields = {}
    @column_width = 0
    @data_array[0].each { |field| @max_length_fields[field] = field.length}
    find_max_lengths_for_columns
  end

  def find_max_lengths_for_columns
    @data_array.each do |fieldset|
      fieldset.each_with_index do |field, i|
        length = field.to_s.length
        @max_length_fields[@data_array[0][i]] = length if length > @max_length_fields[@data_array[0][i]]
      end
    end
  end

  def display_table
    @max_length_fields.each_value { |value| @column_width += value + 3 }
    puts "".ljust(@column_width, "_")
    @data_array.each do |fieldset|
      row_string = ""
      fieldset.each_with_index do |field, i|
        row_string += "| " + sprintf("%#{@max_length_fields[@data_array[0][i]]}s", field) + " "
      end
      row_string += "|"
      puts row_string
    end
  end

  def show_footer(text, value)
    output_string = "#{text} : #{value}"
    puts output_string.rjust(@column_width, " ")
  end
end

class Invoice
  @@import_duty = 5
  @@sales_tax = 10
  attr_accessor :grand_total

  def initialize(items)
    @item_list = items
    @grand_total = 0
  end


  def calculate_effective_price
    @item_list.each do |item|
      item.price_including_tax *= 1 + @@sales_tax/100.to_f if item.exempted =~ /no/i
      item.price_including_tax *= 1 + @@import_duty/100.to_f if item.imported =~ /yes/i
      item.price_including_tax = item.price_including_tax.round(2)
    end
  end
  def calculate_grand_total
    @item_list.each { |item| self.grand_total += item.price_including_tax }
  end
  def create_data_array
    data_array = []
    data_array.push(["name", "imported", "exempted", "price", "price including tax"])
    @item_list.each do |item|
      data_array.push([item.name, item.imported, item.exempted, item.price, item.price_including_tax])
    end
    data_array
  end
  def generate_bill()
    calculate_effective_price
    calculate_grand_total
    format = FormatDisplay.new(create_data_array)
    format.display_table
    format.show_footer("Grand Total", @grand_total.round)
  end
end

class Item
  attr_reader :name, :imported, :exempted, :price
  attr_accessor :price_including_tax

  def initialize(name, imported, exempted, price)
    @name = name
    @imported = imported
    @exempted = exempted
    @price = price.to_f
    @price_including_tax = @price
  end

end


items = []
begin
  print "\nName of the product: "
  name = gets.chomp
  print "Imported?: "
  imported = gets.chomp
  print "Exempted from sales tax? "
  exempted = gets.chomp
  print "Price: "
  price = gets.chomp
  print "Do you want to add more items to your list(y/n): "
  continue_choice = gets.chomp
  raise RuntimeError, "entered price is not a number" if  price !~ /^[+-]?\d+([.]\d+)?$/
  items << Item.new(name, imported, exempted, price)
end while continue_choice =~ /^y$/i

invoice = Invoice.new(items)
invoice.generate_bill()

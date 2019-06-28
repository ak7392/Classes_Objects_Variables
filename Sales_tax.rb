class Receipt
  require 'io/console'

  IMPORT_TAX = 5.0
  SALES_TAX = 10.0
  CENTS_ROUNDING_MULTIPLIER = 20.0

  def print_receipt(products = input)
    amount_arr = []
    tax_arr = []
    products.each do |i|
      price, product = parse_input(i)
      amount, tax_amount = tax_calculations(product, price)
      amount_with_tax = (amount + tax_amount).round(2)
      amount_arr << amount_with_tax
      tax_arr << tax_amount
    end
    products.each do |i|
     price, product = parse_input(i)
     puts ": Price of the products"
     puts"#{product}: #{price}"
    end
    total_amount =  sprintf( "%0.02f", (amount_arr.reduce{ |sum, x| (sum + x) }))
    total_sales_tax = sprintf( "%0.02f", (tax_arr.reduce{ |sum, x| (sum + x) }))
    print "Sales Tax: " +  total_sales_tax + "\n"
    print "Total: " + total_amount
  end

  def parse_input(i)
    # a = File.read("input.txt")
    b = i.split("\n")
    k = Array.new
    b.each { |x| k.push(x.split(":"))}
    price = []
    product = []
    k.each do |name, value|
      if name == 'Price'
        str = value
        price.push(value)
      elsif name == 'Name of the product'
        str = value
        product.push(value)
      end
    end
    return price
    return product
  end

  def tax_calculations(product, price)
    sales_tax_percentage, import_duty_percentage = get_taxation_prices(product)
    amount = price.to_i
    tax_amount = amount * (sales_tax_percentage + import_duty_percentage)
    return amount, round_amount(tax_amount)
  end

  def get_taxation_prices(product)
    zero_tax_items = ["Chips", "Chocolates"]
    imported_items = ["Chocolates", "Perfume"]
    sales_tax_percentage = zero_tax_items.include?(product) ? 0.0 : (SALES_TAX/100)
    import_duty_percentage = imported_items.include?(product) ? 0.0 : (IMPORT_TAX/100)
    return sales_tax_percentage, import_duty_percentage
  end

  def round_amount(amount)
    ((amount * 20).round.to_f / CENTS_ROUNDING_MULTIPLIER).round(3)
  end

  def input
    return a = File.open("./input.txt").readlines
  end

end

z = Receipt.new
z.print_receipt

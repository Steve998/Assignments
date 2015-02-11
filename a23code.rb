#This is assignment 23
#

load 'a23_InvoiceItemClass.rb'
load 'a23_Invoiceclass.rb'

require 'active_support'
require 'active_support/all'

b = Invoice.new

loop do

  puts ' '
  puts "Enter a product name:"
  product_name = gets.chomp

break if product_name == '\q'.downcase

  puts ' '
  puts "Enter a sales price:"
  sale_price = gets.chomp

  puts ' '

  puts "Enter a quantity:"
  quantity = gets.chomp

  puts ' '

  puts "Enter a tax percent:"
  tax_percentage = gets.chomp

# Enter items name, sale price, quantity and tax percentage

  a = Invoiceitem.new()
   a.product_name = product_name
   a.sale_price = sale_price
   a.quantity = quantity
   a.tax_percentage = tax_percentage

  b.items.push a

end

# Select only the items with quantity > 0
b.items.select! {|x| (x.quantity > "0")}

puts ""

  b.items.each do |item|

    puts "Item Name   / Sales Price / Quantity / Tax Percentage "
    print  item.product_name + " / " + item.sale_price + " / " + item.quantity + " / " + item.tax_percentage
    puts " "

  end

puts "There have been #{b.total_items} items created for this invoice"

# Calculations for totals
 total_item_price = b.items.sum {|x| (x.sale_price.to_f * x.quantity.to_i).to_f }
 total_item_tax = b.items.sum {|x| (x.sale_price.to_f * x.quantity.to_f) * (x.tax_percentage.to_f/100)}
 total_price = total_item_price.to_f + total_item_tax.to_f

# Display the total cost of items, total tax and the final price
puts "The total price of just the items in the invoice is - $ #{total_item_price.to_f}"
puts "The total tax is $ #{total_item_tax.to_f}"
puts "The total price plus tax is $ #{total_price.to_f}"

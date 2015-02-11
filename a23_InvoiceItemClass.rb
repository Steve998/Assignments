# InvoiceItem class

class Invoiceitem

  attr_accessor  :product_name,:sale_price,:quantity,:tax_percentage

   def initialize

   end

  def self.number_of_items

    @@itemcount

  end
end

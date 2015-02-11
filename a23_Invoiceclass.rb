# Invoice class
class Invoice
attr_accessor :items


    def initialize
      @@total_price = 0
      @items = Array.new
    end

    def total_items

      @items.length
    end

end

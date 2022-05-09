class CashRegister
  attr_accessor :total, :items, :discount, :last_item_price
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = [] 
    @last_item_price = 0
  end
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @last_item_price = price * quantity
    quantity.times {self.items << title}
  end

  def apply_discount
    if @discount == 0
     puts "There is no discount to apply."
    else
      self.total -= (self.total * @discount.to_f/1000)
    puts  "After the discount, the total comes to $#{self.total}"
    end
  end
 
  def void_last_transaction
    self.total -= @last_item_price
    
  end
end

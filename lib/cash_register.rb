# class CashRegister 
  
#   attr_accessor :total, :discount, :items, :last_transaction
  
#   def initialize(discount=0)
#     @total = 0 
#     @discount = discount 
#     @items = []
#     @last_transaction = {product => product_name}
#   end

#   def apply_discount
#   if @discount != 0  
#     money_off = @total * (@discount.to_f/100)
#     @total -= money_off
#     "After the discount, the total comes to $#{@total.to_i}."
#     elsif @discount == 0
#     "There is no discount to apply."
#     end
  
#   end
  
  
#   def add_item(name, price, quantity=1)
#     quantity.times do 
#       @items << name 
#       @total += price
#     end
#   end
  
  
  
  
#   def void_last_transaction
#     @last_transaction['quantity'].times do
#       @items.pop
#       @total -= @last_transaction['price']
#     end


#   end
# end 

  
#   end

# #   describe '#void_last_transaction' do
# #     it 'subtracts the last transaction from the total' do
# #       cash_register.add_item("tomato", 1.76)
# #       expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(1.76).to(0.0)
# #     end
# #   end
# # end
  
# end 


class CashRegister 
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount 
    @items = []

    #Make this an empty hash to hold stuff when we add items.
    @last_transaction = {}
  end
  
  def apply_discount
   if @discount != 0  
    money_off = @total * ( @discount.to_f / 100 )
    @total -= money_off

    "After the discount, the total comes to $#{@total.to_i}."
    else @discount == 0
    "There is no discount to apply."
    end
  
  end
  
  
  def add_item(name, price, quantity=1)

    quantity.times do 
       @items << name 
       @total += price 
    end

    @last_transaction['price'] = price 
    @last_transaction['quantity'] = quantity
    
  end
  
  
  def void_last_transaction

    @last_transaction['quantity'].times do
      @items.pop
      @total -= @last_transaction['price']
    end


  end
end 


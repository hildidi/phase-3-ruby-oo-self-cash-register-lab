require 'pry'
class CashRegister

    #returns the current total
        # takes one optional argument, an employee discount, on initialization
    attr_accessor :total, :discount, :items, :previous_total
    

    def  initialize (discount=5)
        #sets an instance variable @total on initialization to zero
        @total=0
        # takes one optional argument, an employee discount, on initialization
        @discount=discount
    
        @items=[]    
    end

    #also accepts an optional quantity
    def add_item (title, price, quantity=1)
        self.previous_total = price*quantity
        self.total += self.previous_total
        quantity.times do
            self.items<<title
        end
    end

    # def apply_discount 
    #     if self.discount 

    # end
    
end

# attr_accessor :total, :items, :discount, :last_transaction

# def initialize (discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
# end

# def add_item(title, price, quantity=1)
#     self.last_transaction = price * quantity
#     self.total += self.last_transaction
#     quantity.times do
#         self.items << title
#     end         
#     binding.pry
# end

# def apply_discount
#     if self.discount !=0
#         discount_as_perc = (100 - self.discount.to_f)/100
#         self.total =(self.total*discount_as_perc).to_i
#         "After the discount, the total comes to $#{self.total}."
#     else
#         "There is no discount to apply." 
#     end
# end    

# def void_last_transaction
#     self.total -= self.last_transaction
# end



class Order 
    def initialize
        @order = []
        menu = Hash.new
    end
    def all(menu)
        @menu = menu.the_menu

    end

    def show_menu
        return @menu
    end
 
    def to_order(order)
        fail "You have not entered a order" if order == ""
        show_menu.each do |key|
            KeyError "This item does not exit" if key.fetch(order) == false
            @order.push(order) if key.fetch(order) 
        end
    end
    def price
        price = []
       show_menu.each do | key,value|
            @order.each do |item|
            price.push(key[item])
           end
       end
       return price.sum.round(2)
        
    end

    def show_order
        return @order.join(", ")
    end
end 
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
       @order.push(order)
    end
    def price
       show_menu.each do |key|
        return key["burger"]
       end

    end

    def show_order
        return @order.join(", ")
    end
end 
class Order 
    def initialize
        @order = []
    end
    def add(menu)
        @menu = menu 
    end
    def to_order(order)
        fail "You have not entered a order" if order == ""
        @order.push(order)
    end
    def show_order
        return @order.join(", ")
    end
end 
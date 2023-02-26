class Order 
    def initialize
        @order = []
    end
    def show_order(order)
        @order.push(order).join
    end
end 
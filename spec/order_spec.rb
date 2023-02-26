require "order.rb"
RSpec.describe Order do
    context "User orders food using method" do
        it "should return nil" do
            orders = Order.new
            expect {orders.to_order("")}.to raise_error "You have not entered a order"
        end
        

    end
end
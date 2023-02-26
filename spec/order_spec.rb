require "order.rb"
RSpec.describe Order do
    context "User orders food using method" do
        it "should return nil" do
            orders = Order.new
            expect {orders.to_order("")}.to raise_error "You have not entered a order"
        end
        it "should return chips and burger" do
            orders = Order.new
            orders.to_order("burger")
            orders.to_order("chips")
            expect(orders.show_order).to eq "burger, chips"
        end
        it "should return chips and burger and kebab" do
            orders = Order.new
            orders.to_order("burger")
            orders.to_order("chips")
            orders.to_order("kebab")
            expect(orders.show_order).to eq "burger, chips, kebab"
        end
        it "should return chips and burger and kebab" do
            orders = Order.new
            orders.to_order("burger")
            orders.to_order("chips")
            orders.to_order("kebab")
            orders.to_order("mac and cheese")
            expect(orders.show_order).to eq "burger, chips, kebab, mac and cheese"
        end
        

    end
end
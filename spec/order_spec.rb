require "order.rb"
RSpec.describe Order do
    context "User orders food using method" do
        it "should return chips" do
            orders = Order.new("chips")
            expect(orders.show_order).to eq "chips"
        end
    end
end
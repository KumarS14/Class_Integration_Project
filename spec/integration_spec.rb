require "order.rb"
require "menu.rb"
RSpec.describe "Integration" do
    it "returns menu" do
        order = Order.new
        menu = Menu.new(["chips" =>  2,
            "burger" => 4,
            "kebab" => 5.75,
            "mac and cheese" => 4.47
        ])
        order.all(menu)
        expect(order.show_menu).to eq  [{"burger"=>4, "chips"=>2, "kebab"=>5.75, "mac and cheese"=>4.47}]
    end

    it "tests to see if order is valid" do
        order = Order.new
        menu = Menu.new([
            {"chips" =>  2},
            {"burger" => 4},
            {"kebab" => 5.75},
            {"mac and cheese" => 4.47}
        ])
        order.all(menu)
        order.to_order("burger")
        expect(order.show_order).to eq "burger"
    end
    it "tests to see if price is returned" do
        order = Order.new
        menu = Menu.new({
            "chips" =>  2,
            "burger" => 4,
            "kebab" => 5.75,
            "mac and cheese" => 4.47
        }
        )
        order.all(menu)
        expect(order.price).to eq 4
    end
end
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
        expect(order.outputs).to eq [menu]
        end
end
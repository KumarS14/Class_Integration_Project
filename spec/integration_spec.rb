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
    it "should return chips and burger" do
        order = Order.new
        menu = Menu.new([
            {"chips" =>  2},
            {"burger" => 4},
            {"kebab" => 5.75},
            {"mac and cheese" => 4.47}
        ])
        order.all(menu)
        order.to_order("burger")
        order.to_order("chips")
        expect(order.show_order).to eq "burger, chips"
    end
    it "should return chips and burger and kebab" do
        order = Order.new
        menu = Menu.new([
            {"chips" =>  2},
            {"burger" => 4},
            {"kebab" => 5.75},
            {"mac and cheese" => 4.47}
        ])
        order.all(menu)
        order.to_order("burger")
        order.to_order("chips")
        order.to_order("kebab")
        expect(order.show_order).to eq "burger, chips, kebab"
    end
    it "should return chips and burger and kebab" do
        order = Order.new
        menu = Menu.new([
            {"chips" =>  2},
            {"burger" => 4},
            {"kebab" => 5.75},
            {"mac and cheese" => 4.47}
        ])
        order.all(menu)
        order.to_order("burger")
        order.to_order("chips")
        order.to_order("kebab")
        order.to_order("mac and cheese")
        expect(order.show_order).to eq "burger, chips, kebab, mac and cheese"
    end
   
    it "fails as item does not exist" do
        order = Order.new
        menu = Menu.new([
            {"chips" =>  2},
            {"burger" => 4},
            {"kebab" => 5.75},
            {"mac and cheese" => 4.47}
        ])
        order.all(menu)
        order.to_order("pizza")
        expect {order.show_order}.to Failure/Error {KeyError "This item does not exit" if key.fetch(order) == false}
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
        order.to_order("burger")
        expect(order.price).to eq 4
    end
    it "tests to see if price of burger and mac and cheese is returned" do
        order = Order.new
        menu = Menu.new({
            "chips" =>  2,
            "burger" => 4,
            "kebab" => 5.75,
            "mac and cheese" => 4.47
        }
        )
        order.all(menu)
        order.to_order("burger")
        order.to_order("mac and cheese")
        expect(order.price).to eq 8.47
    end
    it "tests to see if price of burger and kebab is returned" do
        order = Order.new
        menu = Menu.new({
            "chips" =>  2,
            "burger" => 4,
            "kebab" => 5.75,
            "mac and cheese" => 4.47
        }
        )
        order.all(menu)
        order.to_order("burger")
        order.to_order("kebab")
        expect(order.price).to eq 9.75
    end
end
require "menu.rb"
RSpec.describe Menu do
    context "menu has list of items" do
        it "returns all menu items" do
            menu = Menu.new()
            expect(menu.show_menu).to eq ["burger" => 4, "chips" => 2, "kebab" => 5.75, "mac and cheese" => 4.47]
        end
        
    end
end
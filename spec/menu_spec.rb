require "menu.rb"
RSpec.describe Menu do
    context "menu has list of items" do
        it "returns chips 2 as a basic test" do
            menu = Menu.new()
            expect(menu.show_menu).to eq "chips 2"
        end
        
    end
end
class Menu
    def initialize
    @menu = [
        "chips" => 2,
        "burger" => 4,
    ]
    end
    def the_menu
         @menu
    end
    def show_menu
         the_menu.each do |key|
           puts "#{key}" 
         end
         
    end
end
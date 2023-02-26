class Menu
    def initialize
    @menu = {
        "chips" => 2,
    }
    end
    def the_menu
        return @menu
    end
    def show_menu
        the_menu.each do |key , value|
            return "#{key} #{value}"
         end
         
    end
end
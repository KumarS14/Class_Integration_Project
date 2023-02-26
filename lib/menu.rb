class Menu
    def initialize(menu)
    @menu = menu
    @dishes = (["chips" =>  2,
        "burger" => 4,
        "kebab" => 5.75,
        "mac and cheese" => 4.47
    ]
    )
    end
    def the_menu
      return @dishes
    end
    def show_menu
         the_menu.each do |key|
           print "#{key}" 
         end
         
    end
end
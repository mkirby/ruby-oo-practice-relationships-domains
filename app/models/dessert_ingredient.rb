class DessertIngredient
    attr_accessor :dessert, :ingredient
    @@all = []

    def initialize(dessert, ingredient)
        @dessert = dessert
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end
end
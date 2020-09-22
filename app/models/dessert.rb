class Dessert
    attr_accessor :name, :bakery
    @@all = []
    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def dessert_ingredients
        DessertIngredient.all.select { |di| di.dessert == self}
    end

    def ingredients
        self.dessert_ingredients.map { |di| di.ingredient}
    end

    def calories
        self.ingredients.map { |ingredient| ingredient.calories}.sum
    end

    def self.all
        @@all
    end
end
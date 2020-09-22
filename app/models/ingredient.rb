class Ingredient
    attr_accessor :name, :calories
    @@all = []
    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def dessert_ingredients
        DessertIngredient.all.select { |di| di.ingredient == self}
    end

    def desserts
        self.dessert_ingredients.map { |di| di.dessert}
    end

    def bakery
        self.desserts.map {|dessert| dessert.bakery}
    end

    def self.find_all_by_name(ingredient)
        @@all.select { |ing| ing.name.downcase.include? ingredient.downcase}
    end

    def self.all
        @@all
    end
end
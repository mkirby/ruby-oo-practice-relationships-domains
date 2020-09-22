class Bakery
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select { |dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.map { |dessert| dessert.ingredients}.flatten
    end

    def average_calories
        #self.ingredients.map { |ing| ing.calories}.sum / self.desserts.count
        self.desserts.map { |dessert| dessert.calories}.sum / self.desserts.count
    end

    def shopping_list
        self.ingredients.each { |ing| puts ing.name}
    end

    def self.all
        @@all
    end
end
class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        trips.map { |trip| trip.listing}
    end

    def trips
        Trip.all.select { |trip| trip.guest == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        @@all.select { |guest| guest.trips.count > 1}
    end

    def self.find_all_by_name(name)
        @@all.find_all { |guest| guest.name.downcase == name.downcase}
    end

end
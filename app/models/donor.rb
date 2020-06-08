class Donor

    attr_reader :donor_name, :amount

    @@all = []

    def initialize(donor_name, amount)
        @donor_name = donor_name
        @amount = amount

        @@all << self
    end

    def self.all
        @@all
    end

    def artists
        contributed = Painting.all.select do |painting|
            if painting.donor == self
                painting.artist
            end
        end
        contributed.map.uniq do |donated_painting|
            donated_painting.artist
        end
    end

end
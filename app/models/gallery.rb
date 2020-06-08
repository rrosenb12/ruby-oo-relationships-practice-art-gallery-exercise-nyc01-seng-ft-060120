class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.gallery == self
    end
  end

  def artists
    paintings.map do |paintings|
      paintings.artist
    end
  end

  def artist_names
    artists.map do |artists|
      artists.name
    end
  end

  def most_expensive_paintings
    paintings.max_by do |painting|
      painting.price
    end
  end

end
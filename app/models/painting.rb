class Painting

  attr_reader :title, :price, :artist, :gallery, :donor

  @@all = []

  def initialize(title, price, artist, gallery, donor)
    @price = price
    @title = title
    @artist = artist
    @gallery = gallery
    @donor = donor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.sum do |paintings|
      paintings.price.to_i
    end
  end

end

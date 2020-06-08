class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.artist == self
    end
  end

  def galleries
    paintings.map do |paintings|
      paintings.gallery
    end
  end

  def cities
    galleries.map do |galleries|
      galleries.city
    end
  end

  def self.total_experience
    @@all.sum do |artists|
      artists.years_experience.to_i
    end
  end

  def self.most_prolific
    # returns the artist with the highest average of paintings/per year
    # self.total_experience returns the total yrs experience amongst all artists
    # i want to create a hash with the artist as a key and years experience as value
    artist_experience = Hash.new(0)
    @@all.each do |artist|
      artist_experience[artist.name] = (artist.paintings.count / artist.years_experience).to_f
    end
    best_artist = artist_experience.sort_by{|k,v| v}.last[0]
    best_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

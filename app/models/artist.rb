class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_exp = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @@total_exp << years_experience
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    galleries = self.paintings.collect {|painting| painting.gallery}
    galleries.uniq
  end

  def cities
    self.galleries.collect {|gallery| gallery.city}
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price)
    painting.gallery = gallery
    painting.artist = self
    painting
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@total_exp.sum
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.count && artist.years_experience}
  end
end

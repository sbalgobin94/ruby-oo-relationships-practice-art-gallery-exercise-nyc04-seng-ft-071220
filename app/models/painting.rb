class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []
  @@price = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
    @@price << price
  end

  def self.all
    @@all
  end

  def self.total_price
    @@price.sum
  end

end

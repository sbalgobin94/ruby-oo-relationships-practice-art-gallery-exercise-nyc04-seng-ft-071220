require_relative '../config/environment.rb'

hello = Painting.new("hello", 50)
starry_night = Painting.new("starry night", 50)
irises = Painting.new("irises", 70)

met = Gallery.new("The Met", "New York City")
san_fran = Gallery.new("San Fran Art", "San Francisco")

bob_ross = Artist.new("Bob Ross", 80)
van_gogh = Artist.new("Van Gogh", 70)

hello.artist = bob_ross
starry_night.artist = van_gogh
irises.artist = van_gogh

hello.gallery = san_fran
starry_night.gallery = met
irises.gallery = met


most_exp = met.most_expensive_painting


binding.pry

puts "Bob Ross rules."

require_relative '../config/environment.rb'

jerry_saltz = Donor.new("jerry saltz", 8)

leonardo_da_vinci = Artist.new("leonardo da vinci", 2)
andy_warhol = Artist.new("andy warhol", 1)

lourve = Gallery.new("the lourve", "paris")
moma = Gallery.new("moma", "new york city")
santa_maria = Gallery.new("santa maria delle grazie", "milan")
gallerie_accademia = Gallery.new("gallerie dell'accademia", "venice")

mona_lisa = Painting.new("mona lisa", 3.4, leonardo_da_vinci, lourve, jerry_saltz)
the_last_supper = Painting.new("the last supper", 2.0, leonardo_da_vinci, santa_maria, jerry_saltz)
vitruvian_man = Painting.new("vitruvian man", 0.5, leonardo_da_vinci, gallerie_accademia, jerry_saltz)
shot_marilyns = Painting.new("shot marilyns", 0.2, andy_warhol, moma, jerry_saltz)
la_belle = Painting.new("la belle feronniere", 1.0, leonardo_da_vinci, lourve, jerry_saltz)
campbells_soup_cans = Painting.new("campbells soup cans", 1.1, andy_warhol, moma, jerry_saltz)

binding.pry

puts "Bob Ross rules."

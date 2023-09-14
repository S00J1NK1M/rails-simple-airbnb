# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."

garden_flat = { name: 'Light & Spacious Garden Flat London',
address: '10 Clifton Gardens London W9 1DT',
description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
price_per_night: 75,
number_of_guests: 3}

big_terrace = { name: 'Big Terrace Flat Berlin',
  address: 'Hauptstr. 1',
  description: 'Central location with a huge terrace for BBQ weekend',
  price_per_night: 100,
  number_of_guests: 4}

bunk_bed = { name: 'Bunk Bed Guest House',
  address: 'Mittestr. 2',
  description: 'A great house for a big group of party people',
  price_per_night: 200,
  number_of_guests: 20}

loft_flat = { name: 'Top floor loft',
  address: 'schmidtstr. 3',
  description: 'a big loft at the top floor with a gorgoes city view',
  price_per_night: 150,
  number_of_guests: 2}

forest_cabin = { name: 'Forest Cabin in the city',
  address: 'foreststr. 5',
  description: 'A cabin in the woods giving you feeling of getaway in the city',
  price_per_night: 80,
  number_of_guests: 2}

[garden_flat, big_terrace, bunk_bed, loft_flat, forest_cabin].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

puts "Finished!"

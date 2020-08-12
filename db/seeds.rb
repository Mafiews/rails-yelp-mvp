# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0737037097828", category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0737037097828", category: "french" }
leon = { name: "Leon de Bruxelles", address: "rue Papaoutai, 75012 Paris", phone_number: "0143783754", category: "belgian" }
vin_et_maree = { name: "Vin et Marée", address: "Avenue du Maine, 75015 Paris", phone_number: "0889041595", category: "french" }
yakitori_paradise = { name: "Yakitori Paradise", address: "Boulevard de Magenta, 75019 Paris", phone_number: "0808080808", category: "japanese" }
dragon_de_jade = { name: "Le Dragon de Jade", address: "Boulevard Saint-Marcel", phone_number: "0943783600", category: "chinese" }
verre_siffleur = { name: "Le Verre Siffleur", address: "Rue d'Alésia", phone_number: "0737673737", category: "french" }
bruxelles_vie = { name: "Bruxelles Vie", address: "Grand Place, Bruxelles", phone_number: "0478467895", category: "belgian" }

[dishoom, pizza_east, leon, vin_et_maree, yakitori_paradise, dragon_de_jade, verre_siffleur, bruxelles_vie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Vendor.new(name: "Nestle", id: 11)
Product.create!(category: "candy", price: 3.5, id: 11, vendor_id: 11, machine_id: 2, name: "Nestle candy")
Vendor.create!(name: "Hersey", id: 25)
Product.create!(category: "candy", price: 3.75, id: 12, vendor_id: 25, machine_id: 2, name: "Hersey Milk Chocolate Bar")
Vendor.create!(name: "Coke", id: 26)
Product.create!(category: "cola", price: 5.75, id: 13, vendor_id: 26, machine_id: 2, name: "Coca Cola Classic")

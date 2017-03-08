# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chair = Chair.new(name:"Truss Lounge Chair", image:"http://www.yliving.com/images/gus-truss-lounge-chair/gallery_3.jpg", price: 895, description: "Inspired by mid-century design, the Truss Chair is a comfortable accent chair suitable for small spaces. Named for the wood truss style construction detail on the sides, the Truss Chair features a structured silhouette with an architectural influence.")

chair.save

puts "Success!"

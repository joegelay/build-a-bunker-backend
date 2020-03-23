# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Bunker.destroy_all 
Supply.destroy_all 
Disaster.destroy_all


joe = User.create name: "Joe"
evan = User.create name: "Evan"
aaron = User.create name: "Aaron"
jared = User.create name: "Jared"

walnut = Bunker.create name: "Walnut", 

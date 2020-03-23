# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BunkerSupply.destroy_all
Disaster.destroy_all
Bunker.destroy_all
Supply.destroy_all
User.destroy_all

joe = User.create username: "Joe", email: "joe@joe.com"
evan = User.create username: "Evan", email: "evan@evan.com"
aaron = User.create username: "Aaron", email: "aaron@aaron.com"
jared = User.create username: "Jared", email: "jared@jaren.com"

barnyard = Bunker.create name: "Barnyard", user: joe 
hotcorner = Bunker.create name: "Hot Corner", user: evan
ohiostreet = Bunker.create name: "Ohio Street", user: aaron
treehouse = Bunker.create name: "Treehouse", user: jared

shotgun = Supply.create name: "Shotgun", value: 10, cost: 10, category: "weapon"
rifle = Supply.create name: "Shotgun", value: 8, cost: 8, category: "weapon"
canned = Supply.create name: "Canned Goods - 1 week supply", value: 15, cost: 10, category: "food" 
frozen = Supply.create name: "Frozen Goods - 1 week supply", value: 12, cost: 8, category: "food"  
thatch = Supply.create name: "Thatched Roof", value: 4, cost: 5, category: "shelter"
swimmingpool = Supply.create name: "Swimming Pool", value: 10, cost: 15, category: "health"

BunkerSupply.create bunker: barnyard, supply: shotgun 
BunkerSupply.create bunker: barnyard, supply: rifle
BunkerSupply.create bunker: hotcorner, supply: canned 
BunkerSupply.create bunker: hotcorner, supply: frozen 
BunkerSupply.create bunker: treehouse, supply: thatch
BunkerSupply.create bunker: treehouse, supply: swimmingpool

hurricane = Disaster.create name: "Hurricane", food: 20, shelter: 30 , weapon: 0, health: 20
zombie = Disaster.create name: "Zombie Apocalypse", food: 10, shelter: 15, weapon: 50, health: 20
coronavirus = Disaster.create name: "Coronavirus", food: 40, shelter: 0, weapon: 0, health: 30
nuclearwar = Disaster.create name: "Nuclear War", food: 30, shelter: 50, weapon: 50, health: 10
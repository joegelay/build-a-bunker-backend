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

shotgun = Supply.create name: "Shotgun", value: 50, cost: 2000, category: "weapon"
rifle = Supply.create name: "Rifle", value: 10, cost: 1000, category: "weapon"
slingshot = Supply.create name: "Slingshot", value: 5, cost: 200, category: "weapon"
boomerang = Supply.create name: "Boomerang", value: 3, cost: 100, category: "weapon"

greenhouse = Supply.create name: "Greenhouse", value: 40, cost: 2000, category: "food"  
canned = Supply.create name: "Canned Goods - 1 week supply", value: 20, cost: 500, category: "food" 
frozen = Supply.create name: "Frozen Goods - 1 week supply", value: 10, cost: 250, category: "food"  
pantry = Supply.create name: "Pantry - Extra Food Storage", value: 30, cost: 1000, category: "food"  
pizza = Supply.create name: "Pizza Delivery", value: 8, cost: 200, category: "food"  

thatch = Supply.create name: "Thatched Roof", value: 5, cost: 200, category: "shelter"
steel = Supply.create name: "Steel Roof", value: 50, cost: 2500, category: "shelter"
brickwalls = Supply.create name: "Brick Walls", value: 25, cost: 1500, category: "shelter"
concrete = Supply.create name: "Concrete Walls", value: 40, cost: 2000, category: "shelter"
chainlink = Supply.create name: "Chain Link Fence", value: 10, cost: 500, category: "shelter"
moat = Supply.create name: "Moat", value: 20, cost: 1000, category: "shelter"
tent = Supply.create name: "Tent", value: 5, cost: 200, category: "shelter"

friend = Supply.create name: "Friend", value: 40, cost: 2500, category: "health"
swimmingpool = Supply.create name: "Swimming Pool", value: 10, cost: 1000, category: "health"
netflix = Supply.create name: "Netflix", value: 15, cost: 1500, category: "health"
gym = Supply.create name: "Gym", value: 10, cost: 750, category: "health"
tp = Supply.create name: "Toilet Paper", value: 15, cost: 1000, category: "health"

BunkerSupply.create bunker: barnyard, supply: shotgun 
BunkerSupply.create bunker: barnyard, supply: rifle
BunkerSupply.create bunker: hotcorner, supply: canned 
BunkerSupply.create bunker: hotcorner, supply: frozen 
BunkerSupply.create bunker: treehouse, supply: thatch
BunkerSupply.create bunker: treehouse, supply: swimmingpool

hurricane = Disaster.create name: "Hurricane", food: 10, shelter: 35, weapon: 0, health: 10
zombie = Disaster.create name: "Zombie Apocalypse", food: 10, shelter: 15, weapon: 45, health: 20
coronavirus = Disaster.create name: "Coronavirus", food: 20, shelter: 0, weapon: 0, health: 30
nuclearwar = Disaster.create name: "Nuclear War", food: 50, shelter: 50, weapon: 50, health: 50
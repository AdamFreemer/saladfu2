# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "adding seed stories"

Salad.create salad_name: "Caesar", description: "Classic caesar salads with croutons", votes: 1, lettuce_type: "romaine"
Salad.create salad_name: "Chicken Salad", description: "Chicken salads with ranch dressing", votes: 1, lettuce_type: "romaine"
Salad.create salad_name: "Asian", description: "Lettuce w/ cranberries, noodles and sweet dressing", votes: 1, lettuce_type: "Arugula"

puts "seed adding completed"

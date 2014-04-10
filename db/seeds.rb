# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.delete_all
Review.delete_all

kfc = Restaurant.create(name: 'KFC', category: 'Fast food', location: 'Baker street, London')
mac = Restaurant.create(name: 'McDonalds', category: 'Fast food', location: 'Baker street, London')
brg = Restaurant.create(name: 'Burger King', category: 'Fast food', location: 'Baker street, London') 
cv = Restaurant.create(name: 'Chicken Village', category: 'Fast food', location: 'Baker street, London') 

Review.create(comment: 'OK', rating: 4, restaurant: kfc)
kfc.reviews.create(comment: 'Have it your way', rating: 4) 
brg.reviews.create(comment: 'Superb!', rating: 5) 
kfc.reviews.create(comment: 'Very nice', rating: 5) 
mac.reviews.create(comment: "I'm lovin' it", rating: 5) 

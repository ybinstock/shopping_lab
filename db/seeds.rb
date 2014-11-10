# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create({username: "eschoppik", password: "tracy1", is_admin: true})
User.create({username: "user1", password: "testing"})
User.create({username: "user2", password: "testing"})
User.create({username: "user3", password: "testing"})
User.create({username: "user4", password: "testing"})
User.create({username: "user5", password: "testing"})

Product.create({name: "xbox", category: "electronics", price: 150.99})
Product.create({name: "ps3", category: "electronics", price: 199.99})
Product.create({name: "wii", category: "electronics", price: 129.99})
Product.create({name: "great gatsby", category: "book", price: 29.99})
Product.create({name: "water bottle", category: "camping", price: 9.99})
Product.create({name: "pen", category: "office", price: 4.99})


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodAccount.destroy_all
User.destroy_all

user_one = User.create({email: "joo@gmail.com", password: 'password', password_confirmation: 'password'})
user_two = User.create({email: "moo@gmail.com", password: 'password', password_confirmation: 'password'})

user_one.food_accounts.create({name: 'Dessert', food_type: "Carrot Cake"})
user_two.food_accounts.create({name: 'Main', food_type: "Burrito"})
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

Restaurant.new(
    name: 'Burger Joint',
    address: 'Malvern City',
    phone_number: '1234-2341',
    category: 'belgian'
  ).save!

Restaurant.new(
    name: 'Mr Chan',
    address: 'Hawthorn East',
    phone_number: '1888-0001',
    category: 'chinese'
  ).save!

Restaurant.new(
    name: 'Le Boucher',
    address: 'East Bentleigh',
    phone_number: '2345-4441',
    category: 'french'
  ).save!

Restaurant.new(
    name: 'Chocolat Cafe',
    address: 'East Bentleigh',
    phone_number: '2110-3341',
    category: 'belgian'
  ).save!

Restaurant.new(
    name: 'Anglers Rest Cafe',
    address: 'Melbourne',
    phone_number: '5110-2546',
    category: 'japanese'
  ).save!

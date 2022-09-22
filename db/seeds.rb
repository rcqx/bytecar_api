# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'Frank')
User.create(name: 'Jose')
User.create(name: 'Hector')
Car.create(brand: 'Hyundai', model: 'N Vision 74', image:'image_url')
Car.create(brand: 'Hyundai', model: 'Ioniq 7', image:'image_url')
Car.create(brand: 'Hyundai', model: 'Ioniq 5', image:'image_url')
Reservation.create(user: User.first, car: Car.first, date: '30/10/2022', city: 'Rio de Janeiro')
Reservation.create(user: User.last, car: Car.last, date: '07/10/2022', city: 'Santo Domingo')

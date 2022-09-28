# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(id: 1, name: 'Frank', password: '123456', encrypted_attributes: '123456',  created_at: "2022-09-23 00:32:42.134315000 +0000", updated_at: "2022-09-23 00:32:42.134315000 +0000")
User.create(name: 'Jose', password: '123456')
User.create(name: 'Hector')
Car.create(brand: 'Hyundai', model: 'N Vision 74', image:'image_url')
Car.create(brand: 'Hyundai', model: 'Ioniq 7', image:'image_url')
Car.create(brand: 'Hyundai', model: 'Ioniq 5', image:'image_url')
Reservation.create(user: User.first, car: Car.first, date: '30/10/2022', city: 'Rio de Janeiro')
Reservation.create(user: User.last, car: Car.last, date: '07/10/2022', city: 'Santo Domingo')

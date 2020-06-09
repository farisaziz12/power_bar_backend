# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#users

user1 = User.create(first_name: "Faris", last_name: "Aziz", email: "farisaziz12@gmail.com", admin: false)


#orders

order1 = Order.create(user_id: user1.id)


#products

product1 = Product.create(name: "Coffee", price: 5.00)
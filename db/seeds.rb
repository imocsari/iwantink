# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{email: "ajkdad@ds.com", password: "fdsfsdfdssfdsf", firstname: "alex", lastname: "Siskos"}])

Artist.create([{ first_name: 'Antonio', last_name: 'Smith', email: 'smith_antonio59@hotmail.com', password: "antonio", bio: 'I am 27 year old experienced tattoo artist with 10 years experience, I am experienced in all styles', }])
Artist.create([{ first_name: 'Gab', last_name: 'Del', email: 'gabdelaun@mail.com', password: "antonio", bio: 'I am 27 year old experienced tattoo artist with 10 years experience, I am experienced in all styles', }])

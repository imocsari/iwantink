# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{email: "ajkdad@ds.com", password: "fdsfsdfdssfdsf", firstname: "alex", lastname: "Siskos"}])

Artist.destroy_all
Artist.create!([{ first_name: 'Antonio', last_name: 'Smith', email: 'smith_antonio59@hotmail.com', password: "antonio", address: "SW1A 0WZ, london", bio: 'I am 27 year old experienced tattoo artist with 10 years experience, I am experienced in all styles', picture_url: "http://res.cloudinary.com/dvqpald5f/image/upload/v1479225966/tatou1_tivbzm.jpg"}])
Artist.create([{ first_name: 'Bob', last_name: 'Dr', email: 'Drbob@mail.com', password: "antonio", address: "WC1A 1AH, london", bio: 'I am addicted to tattooing the moment. I picked up several tricks of the trade from different tattoo artists but one made a significant impact on my life, my mentor, Stizzo.', picture_url: "http://res.cloudinary.com/dvqpald5f/image/upload/v1479293829/sizzo_sctrwy.jpg"}])
Artist.create([{ first_name: 'Tony', last_name: 'Sheldon', email: 'tony.sheldon@hotmail.com', password: "antonio", address:"SW1A 1AA, london", bio: 'I have 45 years of experience as a tattoo artist, I can design what ever you whish', picture_url: "http://res.cloudinary.com/dvqpald5f/image/upload/v1479294304/vieux_tatoueur_pwlevr.jpg"}])
Artist.create([{ first_name: 'Rob', last_name: 'Goks', email: 'rob.goks@hotmail.com', password: "antonio", address: "SW1A 1WJ, london", bio: 'I have been doing tattoos for the past 9 years. Come visit my gallery to see more about my work', picture_url: "http://res.cloudinary.com/dvqpald5f/image/upload/v1479294237/jeune_tattou_khizmh.jpg"}])
Artist.create([{ first_name: 'Cindy', last_name: 'Jinks', email: 'cindy.jinks@hotmail.com', password: "antonio", address: "W1A 1AL, london", bio: 'I am sepecialized in graffiti, lettering and script. Can easily design your lover on your arm.', picture_url: "http://res.cloudinary.com/dvqpald5f/image/upload/v1479294401/fille_tatou_op5tgr.jpg"}])

Review.create([{ content: "Was a wonderful experience", stars: 4}])


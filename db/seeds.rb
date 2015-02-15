# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(firstname: 'Jan', lastname: 'Kowalski', email: 'jk@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Marta', lastname: 'Kowalska', email: 'mk@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Roman', lastname: 'Nowak', email: 'rn@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Tadeusz', lastname: 'Smyk', email: 'ts@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Ewa', lastname: 'Rak', email: 'er@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Arnold', lastname: 'King', email: 'admin@ws.com', encrypted_password: 'password')
User.create(firstname: 'Jozef', lastname: 'Pilsudski', email: 'wodz@pl.pl' admin: true)

Categories.create(name: 'Flowers', id: 1)
Categories.create(name: 'Toys', id: 2)
Categories.create(name: 'Cars', id: 3)

Products.create(title: 'Daisy', description: 'Nice flower', price: 10, user_id: 1, category_id: 1 )
Products.create(title: 'Truck', description: 'Yellow Dump Track', price: 12, user_id: 2, category_id: 2)

Reviews.crate(content: 'Best deal ever', rating: 5, product_id: 2, user_id: 2 )
Reviews.crate(content: 'Awsome product', rating: 5, product_id: 2, user_id: 3 )
Reviews.crate(content: 'Like it', rating: 5, product_id: 2, user_id: 1 )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(firstname: 'Jan', lastname: 'Kowalski', email: 'jkowalski@gmail.com', encrypted_password: 'password')
User.create!(firstname: 'Marta', lastname: 'Kowalska', email: 'mkowalska@gmail.com', encrypted_password: 'password')
User.create!(firstname: 'Roman', lastname: 'Nowak', email: 'rnowak@gmail.com', encrypted_password: 'password')
User.create!(firstname: 'Tadeusz', lastname: 'Smyk', email: 'tsmyk@gmail.com', encrypted_password: 'password')
User.create!(firstname: 'Ewa', lastname: 'Rak', email: 'erak@gmail.com', encrypted_password: 'password')
User.create!(firstname: 'Arnold', lastname: 'King', email: 'ak@ws.com', encrypted_password: 'password')
User.create!(firstname: 'Jozef', lastname: 'Pilsudski', email: 'wodznr1@pl.pl', admin: true, encrypted_password: 'password')

Category.create!(name: 'Flowers', id: 1)
Category.create!(name: 'Toys', id: 2)
Category.create!(name: 'Cars', id: 3)

Product.create!(title: 'Daisy', description: 'Nice flower', price: 10, user_id: 1, category_id: 1 )
Product.create!(title: 'Truck', description: 'Yellow Dump Track', price: 12, user_id: 2, category_id: 2)

Review.create!(content: 'Best deal ever!!', rating: 5, product_id: 2, user_id: 2 )
Review.create!(content: 'Awsome product!', rating: 5, product_id: 2, user_id: 3 )
Review.create!(content: 'Like it!', rating: 5, product_id: 2, user_id: 1 )

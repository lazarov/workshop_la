# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ser.create(firstname: 'Jan', lastname: 'Kowalski', email: 'jk@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Marta', lastname: 'Kowalska', email: 'mk@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Roman', lastname: 'Nowak', email: 'rn@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Tadeusz', lastname: 'Smyk', email: 'ts@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Ewa', lastname: 'Rak', email: 'er@gmail.com', encrypted_password: 'password')
User.create(firstname: 'Arnold', lastname: 'King', email: 'admin@ws.com', encrypted_password: 'password')

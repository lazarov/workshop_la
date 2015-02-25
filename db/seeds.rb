# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'ffaker'

User.destroy_all
Category.destroy_all
Product.destroy_all
Review.destroy_all

# Seed Users & Category

#User.create!(firstname: 'Jozef', lastname: 'Pilsudski', email: 'wodznr1@pl.pl', admin: true, encrypted_password: 'password')
#User.create!(firstname: 'Adam', lastname: 'Kot', email: 'akot@kot.pl', password: 'password')

# 7.times do
#   user = User.create!(firstname: Faker::Name.first_name,
#                        lastname: Faker::Name.last_name,
#                           email: Faker::Internet.email,
#                        password: Faker::Internet.password(8))
#
#   #puts user.inspect
#   category = Category.create!( name: Faker::Product.brand )
#   #puts category.inspect
# end
#
# # Seed Products
#
# c_id = Category.order(id: :desc).limit(5).pluck(:id)
# 30.times do
#   product = Product.create!( title: Faker::Product.product_name,
#                       description: Faker::Lorem.paragraph,
#                             price: rand(1..99),
#                       category_id: c_id[rand(c_id.length)])
#
#     #puts product.inspect
# end
#
# # Seed Reviews
#
# p_id = Product.order(id: :desc).limit(5).pluck(:id)
# u_id = User.order(id: :desc).limit(5).pluck(:id)
# 100.times do
#   review = Review.create!( content: Faker::Lorem.sentence,
#                         product_id: p_id[rand(p_id.length)],
#                             rating: rand(1..5),
#                            user_id: u_id[rand(u_id.length)])
#     #puts review.inspect
# end

7.times do
  user = User.create!(firstname: Faker::Name.first_name,
                       lastname: Faker::Name.last_name,
                          email: Faker::Internet.email,
                       password: Faker::Internet.password(8))
  user.save
  #puts user.inspect
  category = Category.create!( name: Faker::Product.brand )
  #puts category.inspect
  category.save

  if ( !category.nil? )
    (rand(1..3)).times do
      category.product.create(title: Faker::Product.product_name,
                        description: Faker::Lorem.paragraph,
                              price: rand(1..99))
      product.save
    end
  end
  if ( !product.nil? && !user.nil? )
    (rand(1..4)).times do
      product.review.create(content: Faker::Lorem.sentence,
                             rating: rand(1..5))
    end
  end
end

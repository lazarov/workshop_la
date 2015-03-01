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

User.create!(firstname: 'Jan', lastname: 'Pies', email: 'jpies@pl.pl', admin: true, password: 'password')
User.create!(firstname: 'Adam', lastname: 'Kot', email: 'akot@kot.pl', password: 'password')
User.create!(firstname: 'Tomek', lastname: 'Kruk', email: 'tkruk@kot.pl', password: 'password')

8.times do
  user = User.create!(firstname: Faker::Name.first_name,
                       lastname: Faker::Name.last_name,
                          email: Faker::Internet.email,
                       password: Faker::Internet.password(8))
  #puts user.inspect
  category = Category.create!( name: Faker::Product.brand )
  #puts category.inspect

  if ( !category.nil? )
    (rand(1..7)).times do
      product = category.products.create!(title: Faker::Product.product_name,
                        description: Faker::Lorem.paragraph,
                              price: rand(1..99))

      if ( !product.nil? && !user.nil? )
        (rand(1..6)).times do
          u_id = User.order(id: :desc).limit(5).pluck(:id)
          review = product.reviews.create!(content: Faker::Lorem.sentence,
                                            rating: rand(1..5),
                                           user_id: u_id[rand(u_id.length)])
        #  user.reviews << review
        end
     end
   end
 end
end

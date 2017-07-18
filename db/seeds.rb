# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 0..19
   #FactoryGirl.create(:author) выдает 20 одинаковых имен
  Author.create({name: Faker::Name.unique.name, email: Faker::Internet.unique.email, city: Faker::Address.unique.city, address: Faker::Address.unique.street_address, birthday: Faker::Date.unique.birthday})
end
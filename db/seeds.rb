# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 0..19
   FactoryGirl.create(:author)
end
tmp = 0
for j in 20..Faker::Number.between(21, 200) # возможно стоит от 0
   FactoryGirl.create(:article)
  tmp += 1
end

for k in 0..Faker::Number.between(0, 200)
   FactoryGirl.create(:comment)
end

for i in 0..19
  FactoryGirl.create(:tag)
end

connection = ActiveRecord::Base.connection

for i in 1..tmp
  for j in 1..3
     connection.execute("INSERT INTO articles_tags VALUES(#{i}, #{Faker::Number.between(1, 20)})") #костыль
  end
end
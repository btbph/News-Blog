FactoryGirl.define do
  factory :author do
    name { Faker::Name.unique.name }
    email { Faker::Internet.unique.email }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    birthday { Faker::Date.birthday }
  end
end

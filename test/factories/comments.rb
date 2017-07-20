FactoryGirl.define do
  factory :comment do
    commenter { Faker::Name.name }
    body { Faker::Hipster.sentence }
    article_id { Faker::Number.between(1, 20) }
  end
end

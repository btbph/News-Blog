FactoryGirl.define do
  factory :article do
    header { Faker::Hipster.sentence(4) }
    text { Faker::Hipster.paragraph(4) }
    author_id { Faker::Number.between(1, 20) }
  end
end

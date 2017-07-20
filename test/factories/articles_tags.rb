FactoryGirl.define do
  factory :article_tag do
    article_id 1
    tag_id { Faker::Number.between(1, 20) }
  end
end

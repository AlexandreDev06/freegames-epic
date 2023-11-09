FactoryBot.define do
  factory :central do
    name { Faker::Name.name }
    status { 1 }
    user_id { 1 }
  end
end

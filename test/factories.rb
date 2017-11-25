require "factory_bot"

FactoryBot.define do
  factory :calendar do
    name "Calendar"
    latitude 1.5
    longitude 1.5
  end

  factory :user do
    first_name "Bob"
    last_name "Dylan"
    password "Password1"
    sequence :email do |n| 
      "bobdylan#{n}@example.com"
    end
  end
end

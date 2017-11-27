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
    acc_type "club officer"
    sequence :email do |n| 
      "bobdylan#{n}@example.com"
    end
  end

  factory :club do
    name "Alpha Epsilon Pi"
    layout '1'
    description "Alpha Epsilon Pi, otherwise referred to as ‘A E Pi’, was founded in 1913 at New York University by Charles C. Moskowitz and 10 other Jewish men. The chapter here at SJSU, was founded in 2013 and is one of our 18 chapters with a chapter facility located on 10th street. Alpha Epsilon Pi aspires to encourage the Jewish student to remain dedicated to Jewish ideals, values, and ethics and to prepare the student to be one of tomorrow's leaders so that he may help himself, his family, his community, and his people."
    picture "aepi_logo.png"
  end


 

end

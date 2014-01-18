# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    title "MyString"
    description "MyText"
    price "9.99"
    
    admin
  end
end

FactoryGirl.define do
  factory :product do
    sequence :name
    sequence :description
    price 100
    catalog
  end
end
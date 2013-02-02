FactoryGirl.define do

  sequence(:email) { |n| LoremIpsum.generate }

  factory :user do
    email  { generate :email }
  end
end

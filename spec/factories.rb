FactoryGirl.define do


  sequence(:email) do |n|
    "#{n}@emailaddress.com"
  end

  factory :user do
    email
    password 'some12$thing'
  end
end

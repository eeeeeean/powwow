FactoryGirl.define do


  sequence(:email) do |n|
    "#{n}@emailaddress.com"
  end

  factory :user do
    email
    password 'some12$thing'
  end

  factory :group do
    name 'some_name'
    user_id 1
  end
end

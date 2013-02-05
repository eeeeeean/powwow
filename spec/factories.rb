FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "#{n}@email.com" }
    password 'some12$thing'
  end

  factory :group do
    name 'some_name'
    sequence(:user_id) { |n| n }
  end

  factory :membership_request do
    user_id 1
    group_id 1
  end
end

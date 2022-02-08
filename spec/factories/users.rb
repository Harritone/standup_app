FactoryBot.define do
  factory :user do
    association :account, factory: :account, strategy: :build
    name { "MyString" }
    sequence(:email) { |n| "email.#{n}@mail.com" }
    password { '123123' }
    password_confirmation { '123123' }
  end
end

FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { 'email.test@mail.com' }
    password { '123123' }
  end
end

FactoryBot.define do
  factory :team do
    name { "MyString" }
    account { nil }
    timezone { "MyString" }
    has_reminder { false }
    has_recap { false }
    reminder_time { "2022-02-09 01:17:21" }
    recap_time { "2022-02-09 01:17:21" }
  end
end

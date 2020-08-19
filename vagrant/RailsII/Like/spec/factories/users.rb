FactoryBot.define do
  factory :user do
    name { "Garrett" }
    email { "gbass1912@gmail.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end

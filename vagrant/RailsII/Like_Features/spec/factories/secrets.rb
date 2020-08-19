FactoryBot.define do
  factory :secret do
    content { "My Secret ;)" }
    user { nil }
  end
end

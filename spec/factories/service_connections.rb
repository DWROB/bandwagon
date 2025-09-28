FactoryBot.define do
  factory :service_connection do
    user { nil }
    service_type { "MyString" }
    access_token { "MyText" }
    refresh_token { "MyText" }
    expires_at { "2025-09-28 13:16:58" }
    service_user_id { "MyString" }
  end
end

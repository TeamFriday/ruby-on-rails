json.array!(@user_signups) do |user_signup|
  json.extract! user_signup, :id, :name, :phone_no, :email, :password, :user_type
  json.url user_signup_url(user_signup, format: :json)
end

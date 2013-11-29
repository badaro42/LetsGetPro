json.array!(@users) do |user|
  json.extract! user, :name, :email, :birth_date, :about_me, :photo
  json.url user_url(user, format: :json)
end

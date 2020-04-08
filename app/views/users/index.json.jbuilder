json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_name, :admin, :role, :email1, :email2, :phone
  json.url user_url(user, format: :json)
end

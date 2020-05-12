json.array!(@companies) do |company|
  json.extract! company, :id, :name, :city, :user_id, :members, :hr_phone, :state, :address, :bank
  json.url company_url(company, format: :json)
end

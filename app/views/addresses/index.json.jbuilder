json.array!(@addresses) do |address|
  json.extract! address, :id, :address, :city, :state, :country, :user_id, :resume_id, :office_address, :stay, :current_address, :permenent_address
  json.url address_url(address, format: :json)
end

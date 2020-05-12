json.array!(@experiences) do |experience|
  json.extract! experience, :id, :role, :company, :start_date, :end_date, :description, :projects, :user_id, :resume_id
  json.url experience_url(experience, format: :json)
end

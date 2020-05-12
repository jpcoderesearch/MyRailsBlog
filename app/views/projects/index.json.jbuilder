json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :company_id, :user_id, :resume_id
  json.url project_url(project, format: :json)
end

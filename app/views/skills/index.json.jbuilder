json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :version, :last_used, :project, :percentage, :expert_level, :user_id, :resume_id, :company_id
  json.url skill_url(skill, format: :json)
end

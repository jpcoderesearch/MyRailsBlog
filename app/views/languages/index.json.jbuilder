json.array!(@languages) do |language|
  json.extract! language, :id, :name, :percentage, :expert_level, :user_id, :resume_id
  json.url language_url(language, format: :json)
end

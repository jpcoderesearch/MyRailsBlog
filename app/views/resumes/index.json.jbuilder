json.array!(@resumes) do |resume|
  json.extract! resume, :id, :name, :description
  json.url resume_url(resume, format: :json)
end

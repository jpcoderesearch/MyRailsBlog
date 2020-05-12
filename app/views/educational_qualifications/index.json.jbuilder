json.array!(@educational_qualifications) do |educational_qualification|
  json.extract! educational_qualification, :id, :college, :course, :subject, :start_date, :end_date, :percentage, :user_id, :resume_id, :city, :state, :country, :rollnumber
  json.url educational_qualification_url(educational_qualification, format: :json)
end

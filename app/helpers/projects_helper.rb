module ProjectsHelper
	def companies
		Hash[Company.all.pluck(:id, :name)]
	end
end

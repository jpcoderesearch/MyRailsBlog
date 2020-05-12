module CompaniesHelper
	def exp
		Hash[Experience.all.pluck(:id, :company)]
	end		
end

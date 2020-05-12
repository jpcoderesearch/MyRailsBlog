class Company < ActiveRecord::Base
	belongs_to :user
	has_many :projects
	belongs_to :experience
end

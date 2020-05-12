class Resume < ActiveRecord::Base
	belongs_to :user
	has_many :pictures, :as => :imageable
end

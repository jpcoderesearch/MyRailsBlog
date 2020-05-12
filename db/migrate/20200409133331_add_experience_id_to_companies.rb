class AddExperienceIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :experience_id, :integer
  end
end

class AddPresentToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :present, :boolean
  end
end

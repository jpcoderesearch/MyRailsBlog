class AddAchievementsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :achievements, :text
  end
end

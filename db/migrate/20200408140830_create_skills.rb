class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :version
      t.date :last_used
      t.string :project
      t.integer :percentage
      t.string :expert_level
      t.integer :user_id
      t.integer :resume_id
      t.integer :company_id

      t.timestamps
    end
  end
end

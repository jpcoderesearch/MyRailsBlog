class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :company_id
      t.integer :user_id
      t.integer :resume_id

      t.timestamps
    end
  end
end

class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :role
      t.string :company
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.text :projects
      t.integer :user_id
      t.integer :resume_id

      t.timestamps
    end
  end
end

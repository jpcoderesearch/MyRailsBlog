class CreateEducationalQualifications < ActiveRecord::Migration
  def change
    create_table :educational_qualifications do |t|
      t.string :college
      t.string :course
      t.string :subject
      t.datetime :start_date
      t.datetime :end_date
      t.string :percentage
      t.integer :user_id
      t.integer :resume_id
      t.string :city
      t.string :state
      t.string :country
      t.string :rollnumber

      t.timestamps
    end
  end
end

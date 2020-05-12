class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.integer :user_id
      t.integer :members
      t.string :hr_phone
      t.string :state
      t.text :address
      t.string :bank

      t.timestamps
    end
  end
end

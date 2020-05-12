class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :user_id
      t.integer :resume_id
      t.text :office_address
      t.string :stay
      t.string :current_address
      t.text :permenent_address

      t.timestamps
    end
  end
end

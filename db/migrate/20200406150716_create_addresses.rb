class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :pincode
      t.string :country
      t.string :phone1
      t.string :phone2
      t.text :website_url

      t.timestamps
    end
  end
end

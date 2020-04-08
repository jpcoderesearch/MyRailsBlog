class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.boolean :admin
      t.string :role
      t.string :email1
      t.string :email2
      t.string :phone

      t.timestamps
    end
  end
end

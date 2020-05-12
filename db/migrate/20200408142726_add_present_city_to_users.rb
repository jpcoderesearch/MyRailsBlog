class AddPresentCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :present_city, :string
  end
end

class AddPresentJobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :present_job, :string
  end
end

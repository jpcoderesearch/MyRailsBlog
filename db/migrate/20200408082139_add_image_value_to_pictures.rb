class AddImageValueToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image_value, :string
  end
end

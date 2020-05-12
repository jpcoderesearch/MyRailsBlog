class AddFormTypeToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :form_type, :string
  end
end

class AddFieldsToFolder < ActiveRecord::Migration[5.1]
  def change
    add_column :folders, :name, :string
    add_column :folders, :description, :string
  end
end

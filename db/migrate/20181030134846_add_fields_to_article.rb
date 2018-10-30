class AddFieldsToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :name, :string
    add_column :articles, :description, :string
    add_column :articles, :text, :string
    add_reference :articles, :folder, foreign_key: true
  end
end

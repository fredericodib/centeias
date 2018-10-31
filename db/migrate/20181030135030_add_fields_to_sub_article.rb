class AddFieldsToSubArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_articles, :name, :string
    add_column :sub_articles, :desciption, :string
    add_column :sub_articles, :text, :string
    add_reference :sub_articles, :article, foreign_key: true
  end
end

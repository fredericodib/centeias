class AddAuthors < ActiveRecord::Migration[5.1]
  def change
    add_reference :folders,      :users, foreign_key: true
    add_reference :articles,     :users, foreign_key: true
    add_reference :sub_articles, :users, foreign_key: true
  end
end

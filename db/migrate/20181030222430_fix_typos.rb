class FixTypos < ActiveRecord::Migration[5.1]
  def change
    rename_column :sub_articles, :desciption, :description
  end
end

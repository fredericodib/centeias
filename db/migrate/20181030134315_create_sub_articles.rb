class CreateSubArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_articles do |t|

      t.timestamps
    end
  end
end

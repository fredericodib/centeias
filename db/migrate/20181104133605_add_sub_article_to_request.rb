class AddSubArticleToRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :sub_articles, foreign_key: true
  end
end

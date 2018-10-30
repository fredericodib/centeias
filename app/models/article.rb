class Article < ApplicationRecord
  belongs_to :folder
  has_many :sub_articles
end

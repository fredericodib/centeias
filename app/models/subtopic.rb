class Subtopic < ApplicationRecord
  belongs_to :topic
  validates :name, :text, presence: true
end

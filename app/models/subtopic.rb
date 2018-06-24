class Subtopic < ApplicationRecord
  belongs_to :topic
  validates :name, :text, presence: true

  include PgSearch

  pg_search_scope :search_for, against: %i(name text)
end

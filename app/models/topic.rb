class Topic < ApplicationRecord
	has_many :subtopics, dependent: :destroy
	validates :name, presence: true
end

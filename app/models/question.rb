class Question < ApplicationRecord
	has_many :choices, dependent: :destroy
	validates :question, presence: :true
end

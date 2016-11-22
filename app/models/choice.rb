class Choice < ApplicationRecord
	belongs_to :question
	validates :choice, presence: :true
	validates :question, presence: :true
end

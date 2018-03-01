class Question < ApplicationRecord
  	has_many :answers, dependent: :destroy
    belongs_to :user
  	validates :title, presence: true, length: { minimum: 10, maximum: 50 }
  	validates :text, presence: true, length: { minimum: 10, maximum: 300 }
    
end
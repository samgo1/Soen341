class Question < ApplicationRecord
  has_many :responses
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :text, presence: true
end

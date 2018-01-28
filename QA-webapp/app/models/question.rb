class Question < ApplicationRecord
  has_many :responses
  validates :title, presence: true
  validates :text, presence: true
end

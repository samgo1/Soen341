class Category < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 25 }
  validates_uniqueness_of :name
end
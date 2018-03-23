class Question < ApplicationRecord
  	
    # association macros    
    belongs_to :user
    has_many :answers, dependent: :destroy
    # validation macros   
  	validates :title, presence: true, length: { minimum: 10, maximum: 50 }
  	validates :text, presence: true, length: { minimum: 10, maximum: 300 }
    acts_as_votable
end
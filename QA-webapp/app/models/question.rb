class Question < ApplicationRecord
  	has_many :answers, dependent: :destroy
  	validates :title, presence: true, length: { minimum: 10, maximum: 50 }
  	validates :text, presence: true, length: { minimum: 10, maximum: 300 }
    
    def user
      if self.user_id.blank?
        return nil
      else
        User.find(self.user_id)
      end
    end
    
    def belongs_to(user)
      if user.id == self.user_id
        return true
      end
      return false
    end
end
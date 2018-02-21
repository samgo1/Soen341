class User < ApplicationRecord
  
has_many :questions, dependent: :destroy
has_many :answers, dependent: :destroy
validates :username, presence: true, length: {minimum: 5}
validates :password, presence: true, length: {minimum: 5}
  
  def authenticate
    existing_user = User.find_by username: self.username
    if existing_user != nil
      if existing_user.password == self.password
        self.id = existing_user.id
        return true
      end
    end
    
    return false
  end
end

class User < ApplicationRecord
  
has_many :questions
validates :username, presence: true, 
           uniqueness: { case_sensitive: false}, 
           length: {minimum: 3, maximum: 25}
validates :password, presence: true, length: {minimum: 5}
VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, length: {maximum: 105},
          uniqueness: { case_sensitive: false },
          format: { with: VALID_EMAIL_REGEX }  
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



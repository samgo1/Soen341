class User < ApplicationRecord
    has_many :questions
    validates :username, presence: true,
                           length: {minimum: 5}
    validates :password, presence: true,
                            length: {minimum: 5}
end

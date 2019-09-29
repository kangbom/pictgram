class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-zA-Z\d]{8,32}+\z/i}
    
    has_secure_password
end

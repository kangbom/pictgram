class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i}
    
    has_secure_password
    
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source: 'topic'
end


# def topics
#     Topic.where(:user_id => self.id)
# end

# def favorites
#     Favorite.where(:user_id => self.id)
# end

# def favorite_topics
#     fav = Favorite.where(user_id: self.id)
#     topc =[]
#     fav.each do |fa|
#         topc << Topic.find_by(id: fa.topic_id)
#     end
#     return topc
# end
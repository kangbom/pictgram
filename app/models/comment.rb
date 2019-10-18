class Comment < ApplicationRecord
  validates :content, presence: true
  validates :topic_id, presence: true
  belongs_to :topic
end

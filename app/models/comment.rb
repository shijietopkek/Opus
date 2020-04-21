class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :username, presence: true
    validates :body, presence: true
end

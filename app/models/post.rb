class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
    validates :title, presence: true, length: {:maximum => 200}
    validates :body, presence: true
    validate :check_for_words


def check_for_words
      if self.body.split.size < 100
         errors.add(:base, "Body should be at least 100 words")
      end
end


    validates :tldr, presence: true, length: {:maximum => 140}
end

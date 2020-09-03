class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes
  validates :content, presence: true, length: {minimum: 5}
end

class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :content, presence: true, length: {minimum: 10}
end

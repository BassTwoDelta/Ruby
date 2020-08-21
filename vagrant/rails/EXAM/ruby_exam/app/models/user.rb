class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :posts_liked, through: :likes, source: :posts
  validates :name, :alias, presence: true, length: {minimum: 2}
  validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness: true
  validates :password, presence: true, length: {minimum: 8}
  before_save { email.downcase! }
end

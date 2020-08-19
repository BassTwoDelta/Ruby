class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, presence: true 
  validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness: true
  before_save { email.downcase! }
end

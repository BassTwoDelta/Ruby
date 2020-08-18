class User < ActiveRecord::Base
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true 
  validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness: true
  before_save { email.downcase! }
end

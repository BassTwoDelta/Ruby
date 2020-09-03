class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  has_many :events
  has_many :join
  has_many :events_joined, through: :join, source: :events
  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness: true
  validates :location, presence: true, length: {minimum: 2}
  validates :password, presence: true, length: {minimum: 6}, :if => :password
  before_save { email.downcase! }
end

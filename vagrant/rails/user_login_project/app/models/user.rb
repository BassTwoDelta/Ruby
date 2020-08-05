class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, presence: true, length: {minimum: 2}
    validates :email_address, presence: true, format: {with: EMAIL_REGEX}
    validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 150} 
end

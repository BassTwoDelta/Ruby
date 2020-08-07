class User < ActiveRecord::Base
    has_many :posts
    has_many :messages
    has_many :owners
    has_many :blogs, through: :owners
end

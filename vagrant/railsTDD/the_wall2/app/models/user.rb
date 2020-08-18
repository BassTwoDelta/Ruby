class User < ActiveRecord::Base
    has_many :posts
    validates :username, presence: true, uniqueness: true, length:{minimum: 5}
end

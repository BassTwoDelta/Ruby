class User < ActiveRecord::Base
    validates :first_name, :last_name, :favorite_language, presence: true, length: {minimum: 2}
    has_many :posts
end

class Blog < ActiveRecord::Base
    has_many :posts
    validates :name, :description, presence: true
    has_many :owners
    has_many :users, through: :owners
    has_many :comments, as: :imageable
end

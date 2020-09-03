class Event < ActiveRecord::Base
    belongs_to :user 
    has_many :users
    has_many :joins, through: :users, source: :user
end

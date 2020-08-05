class Dojo < ActiveRecord::Base
    has_many :ninjas
    validates :name, :city, :state, presence: true, length: {minimum: 2}
end

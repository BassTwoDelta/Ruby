class Dojo < ActiveRecord::Base
    validates :branch, presence: true, length: {minimum: 3}
    validates :street, presence: true, length: {minimum: 3}
    validates :city, presence: true, length: {minimum: 3}
    validates :state, presence: true, length: {minimum:2, maximum: 2}
    has_many :students, dependent: :destroy
end

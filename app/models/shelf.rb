class Shelf < ApplicationRecord

    belongs_to :shop
    has_many :candies, dependent: :nullify

    validates_presence_of :name
    
end

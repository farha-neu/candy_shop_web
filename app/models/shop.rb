class Shop < ApplicationRecord
    
    has_many :candies
    has_many :shelves

    scope :newest_first, lambda { order("created_at DESC") }
    validates_presence_of :name
end

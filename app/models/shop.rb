class Shop < ApplicationRecord
    
    has_many :candies
    has_many :shelves

   validates_presence_of :name
end

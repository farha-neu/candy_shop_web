class Candy < ApplicationRecord
    
    # No validation for presence of shop and shelf
    belongs_to :shop, { :optional => true }
    belongs_to :shelf, { :optional => true }

    scope :unshelved_candies, lambda { where(:shelved => false) }
    
    validates_presence_of :name
end

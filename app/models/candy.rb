class Candy < ApplicationRecord
    
    belongs_to :shop, { :optional => true }
    belongs_to :shelf, { :optional => true }

    scope :unshelved_candies, lambda { where(:shelved => false) }
    
end

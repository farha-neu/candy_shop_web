class Candy < ApplicationRecord
    
    belongs_to :shop, { :optional => true }
    belongs_to :shelf, { :optional => true }
    
end

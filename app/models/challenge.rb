class Challenge < ApplicationRecord
    belongs_to :level
    has_many :faces
    
    
end

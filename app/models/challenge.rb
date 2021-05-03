class Challenge < ApplicationRecord
    belongs_to :level
    has_many :faces
    has_one :challenge_answer
    
end

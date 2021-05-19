class Challenge < ApplicationRecord
    has_many :faces    

    def advance_challenge
        self.id.increment
    end
end

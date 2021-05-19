class Game < ApplicationRecord
    has_many :challenge_answers
    has_many :challenges
    belongs_to :current_challenge, class_name: 'Challenge'

    def advance
       
        self.current_challenge_id = current_challenge.id += 1
     end

end

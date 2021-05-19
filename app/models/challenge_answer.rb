class ChallengeAnswer < ApplicationRecord
    belongs_to :challenge
    belongs_to :face
    belongs_to :game, counter_cache: true


    before_save :is_correct
    

    # scope :correct, -> { where ()}

    def is_correct
        if face_id == challenge.correct_answer_number
            self.correct = true 
        else 
            self.correct = false
    end
end
    
    
end

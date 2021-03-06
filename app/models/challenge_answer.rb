class ChallengeAnswer < ApplicationRecord
    belongs_to :challenge
    belongs_to :face
    belongs_to :game, counter_cache: true


    before_save :is_correct
    after_commit :advance_challenge

   
    def is_correct
        if face_id == challenge.correct_answer_number
            self.correct = true 
        else 
            self.correct = false
        end
    end

    def advance_challenge
        game.current_challenge_id += 1
        game.save
    end
    
    
end

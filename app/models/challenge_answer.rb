class ChallengeAnswer < ApplicationRecord
    belongs_to :challenge
    belongs_to :face
    belongs_to :game, counter_cache: true


    # before_save :is_correct

    scope :percent_correct, -> { where ()}
    # def is_correct

    # end
         
    
end

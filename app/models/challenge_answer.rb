class ChallengeAnswer < ApplicationRecord
    belongs_to :challenge
    belongs_to :face
    belongs_to :game, counter_cache: true
end

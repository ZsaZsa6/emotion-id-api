class Game < ApplicationRecord
    has_many :challenge_answers
    has_many :challenges
    # belongs_to :current_challenge, class_name: 'Challenge'
end
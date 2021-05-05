class Game < ApplicationRecord
    has_many :challenge_answers
    # belongs_to :current_challenge, class_name: 'Challenge'
end
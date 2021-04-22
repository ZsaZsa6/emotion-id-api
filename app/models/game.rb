class Game < ApplicationRecord
    has_many :levels
    belongs_to :challenge
end
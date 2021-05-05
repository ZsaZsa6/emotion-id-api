class AddGameIdToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenges, :game, foreign_key: true
  end
end

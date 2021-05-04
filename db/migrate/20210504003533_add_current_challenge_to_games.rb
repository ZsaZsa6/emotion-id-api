class AddCurrentChallengeToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :current_challenge_id, :integer
  end
end

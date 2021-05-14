class AddChallengeAnswersCountToGames < ActiveRecord::Migration[6.0]
  def change
    change_table :games do |t|
      t.integer :challenge_answers_count
    end
  end
end

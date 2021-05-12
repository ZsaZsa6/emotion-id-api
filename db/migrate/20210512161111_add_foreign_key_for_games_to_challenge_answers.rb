class AddForeignKeyForGamesToChallengeAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenge_answers, :game, foreign_key: true

  end
end

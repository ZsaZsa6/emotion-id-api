class AddCorrectBooleanToChallengeAnswers < ActiveRecord::Migration[6.0]
  def change
    change_table :challenge_answers do |t|
      t.boolean :correct
    end
  end
end

class CreateChallengeAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_answers do |t|

      t.timestamps
    end
  end
end

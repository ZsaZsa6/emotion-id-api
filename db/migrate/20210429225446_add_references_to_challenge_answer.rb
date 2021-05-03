class AddReferencesToChallengeAnswer < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenge_answers, :challenge, foreign_key: true
    add_reference :challenge_answers, :face, foreign_key: true
  end
end

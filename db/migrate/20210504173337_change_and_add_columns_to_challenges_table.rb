class ChangeAndAddColumnsToChallengesTable < ActiveRecord::Migration[6.0]
  def change
    change_table :challenges do |t|
    t.remove :emotion_number
    t.string :emotion_name
    t.integer :challenge_number
    end
  end
end

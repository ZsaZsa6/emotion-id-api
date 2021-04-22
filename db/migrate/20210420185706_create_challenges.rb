class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.integer :emotion_number
      t.integer :correct_answer_number

      t.timestamps
    end
  end
end

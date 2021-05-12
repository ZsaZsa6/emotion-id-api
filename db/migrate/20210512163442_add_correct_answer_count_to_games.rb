class AddCorrectAnswerCountToGames < ActiveRecord::Migration[6.0]
  def change
    change_table :games do |t|
      t.integer :correct_count
    end
  end
end

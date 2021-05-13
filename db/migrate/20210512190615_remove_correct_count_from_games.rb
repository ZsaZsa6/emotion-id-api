class RemoveCorrectCountFromGames < ActiveRecord::Migration[6.0]
  def change
    change_table :games do |t|
      t.remove :correct_count
    end
  end
end

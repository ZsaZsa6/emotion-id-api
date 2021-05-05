class RemoveGameIdFromChallenges < ActiveRecord::Migration[6.0]
  def change
    remove_reference :challenges, :game
  end
end

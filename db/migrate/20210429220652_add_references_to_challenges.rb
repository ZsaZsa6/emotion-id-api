class AddReferencesToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenges, :level, foreign_key: true
  end
end

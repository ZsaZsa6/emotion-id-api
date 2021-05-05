class AddLevelNumberToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :level_number, :integer
  end
end

class AddReferencesToLevels < ActiveRecord::Migration[6.0]
  def change
    add_reference :levels, :game, foreign_key: true  
    end
end

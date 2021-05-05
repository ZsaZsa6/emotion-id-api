class RemoveForeignKeyFromFaces < ActiveRecord::Migration[6.0]
  def change
    remove_reference :faces, :challenge
  end
end

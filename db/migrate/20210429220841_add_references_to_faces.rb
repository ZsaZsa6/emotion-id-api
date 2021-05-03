class AddReferencesToFaces < ActiveRecord::Migration[6.0]
  def change
    add_reference :faces, :challenge, foreign_key: true
  end
end

class CreateFaces < ActiveRecord::Migration[6.0]
  def change
    create_table :faces do |t|
      t.string :image_url

      t.timestamps
    end
  end
end

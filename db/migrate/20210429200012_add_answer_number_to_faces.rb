class AddAnswerNumberToFaces < ActiveRecord::Migration[6.0]
  def change
    change_table :faces do |t|
      t.integer :answer_number
    end
  end
end

class RemoveAnswerNumberFromFaces < ActiveRecord::Migration[6.0]
  def change
    change_table :faces do |t|
      t.remove :answer_number
    end
  end
end

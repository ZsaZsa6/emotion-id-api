class AddEmotionPicToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :emotion_pic, :text
  end
end
